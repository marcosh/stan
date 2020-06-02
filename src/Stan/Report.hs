{- |
Copyright: (c) 2020 Kowainik
SPDX-License-Identifier: MPL-2.0
Maintainer: Kowainik <xrom.xkov@gmail.com>

Report and report settings types.
-}

module Stan.Report
    ( ReportSettings (..)

    , generateReport
    ) where

import Html (renderByteString)

import Stan.Core.Toggle (ToggleSolution)
import Stan.Report.Html (stanHtml)


{- | Settings for produced report.
-}
data ReportSettings = ReportSettings
    { reportSettingsSolutionVerbosity :: !ToggleSolution
    }

generateReport :: Text -> IO ()
generateReport = writeFileLBS "stan.html" . renderByteString . stanHtml

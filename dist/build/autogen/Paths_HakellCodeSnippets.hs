module Paths_HakellCodeSnippets (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/techprav/Library/Haskell/bin"
libdir     = "/Users/techprav/Library/Haskell/ghc-7.10.2-x86_64/lib/HakellCodeSnippets-0.1.0.0"
datadir    = "/Users/techprav/Library/Haskell/share/ghc-7.10.2-x86_64/HakellCodeSnippets-0.1.0.0"
libexecdir = "/Users/techprav/Library/Haskell/libexec"
sysconfdir = "/Users/techprav/Library/Haskell/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "HakellCodeSnippets_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "HakellCodeSnippets_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "HakellCodeSnippets_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "HakellCodeSnippets_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "HakellCodeSnippets_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)

-- See https://github.com/tweag/rules_haskell/issues/137

{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_pandoc (
    version,
--    getBinDir, getLibDir, getDynLibDir, getLibexecDir,
    getDataDir, getDataFileName,
--    getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [2,1,1] []

{-
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/yom/code/pandoc/.stack-work/install/x86_64-linux-tinfo6/lts-10.3/8.2.2/bin"
libdir     = "/home/yom/code/pandoc/.stack-work/install/x86_64-linux-tinfo6/lts-10.3/8.2.2/lib/x86_64-linux-ghc-8.2.2/pandoc-2.1.1-DMQol0MqF6vA5NWnlnDUA4"
dynlibdir  = "/home/yom/code/pandoc/.stack-work/install/x86_64-linux-tinfo6/lts-10.3/8.2.2/lib/x86_64-linux-ghc-8.2.2"
datadir    = "/home/yom/code/pandoc/.stack-work/install/x86_64-linux-tinfo6/lts-10.3/8.2.2/share/x86_64-linux-ghc-8.2.2/pandoc-2.1.1"
libexecdir = "/home/yom/code/pandoc/.stack-work/install/x86_64-linux-tinfo6/lts-10.3/8.2.2/libexec/x86_64-linux-ghc-8.2.2/pandoc-2.1.1"
sysconfdir = "/home/yom/code/pandoc/.stack-work/install/x86_64-linux-tinfo6/lts-10.3/8.2.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "pandoc_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "pandoc_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "pandoc_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "pandoc_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "pandoc_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "pandoc_sysconfdir") (\_ -> return sysconfdir)
-}

getDataDir :: IO FilePath
getDataDir = pure "."

getDataFileName :: FilePath -> IO FilePath
getDataFileName = pure

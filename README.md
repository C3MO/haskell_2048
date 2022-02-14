# haskell_2048
![alt text](https://github.com/C3MO/haskell_2048/blob/main/readme_title_pictures/1.png) ![alt text](https://github.com/C3MO/haskell_2048/blob/main/readme_title_pictures/2.png)

### Install requirements
GHCup (https://www.haskell.org/ghcup/)

Install for Linux or MacOs
```bash
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

```
Install for Windows
"run the following in a PowerShell session (as a non-admin user):"
```bash
Set-ExecutionPolicy Bypass -Scope Process -Force;[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;Invoke-Command -ScriptBlock ([ScriptBlock]::Create((Invoke-WebRequest https://www.haskell.org/ghcup/sh/bootstrap-haskell.ps1 -UseBasicParsing))) -ArgumentList $true
```

### Dependencies in your .cabal file
```
executable src
    main-is:          Main.hs

    -- Modules included in this executable, other than Main.
    -- other-modules:

    -- LANGUAGE extensions used by modules in this package.
    -- other-extensions:
    build-depends:    base ^>=4.14.3.0, random ^>=1.2.1, mtl ^>=2.2.2
    hs-source-dirs:   app
    default-language: Haskell2010
```
  
### Start Game
```bash
### Install Cabal
cabal install cabal-install

### Install radom-module for cabal
cabal install random

### Inititialize Cabal
cabal init

### Start the game
cabal run

```

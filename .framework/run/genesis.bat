@echo off
pushd "%~dp0.."
python run/genesis.py %*
popd

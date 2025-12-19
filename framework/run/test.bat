@echo off
pushd "%~dp0.."
python -m pytest %*
popd

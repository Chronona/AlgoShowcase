#!/bin/bash

# JSONからPythonバージョンを取得する関数
get_python_version() {
    echo $(jq -r '.python_version' config.json)
}

# Pythonバージョンの取得
PYTHON_VERSION=$(get_python_version)

# Python環境のセットアップ
echo "Setting up Python environment with pyenv and poetry..."

# pyenvの設定
if ! command -v pyenv &> /dev/null; then
    echo "pyenvがインストールされていません。インストールしてください。"
    exit 1
fi

# Pythonバージョンのインストール
pyenv install $PYTHON_VERSION
pyenv local $PYTHON_VERSION

# poetryのインストール
if ! command -v poetry &> /dev/null; then
    echo "poetryがインストールされていません。インストールしてください。"
    exit 1
fi


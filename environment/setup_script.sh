#!/bin/bash

# Python環境のセットアップ
echo "Setting up Python environment with pyenv and poetry..."

# pyenvの設定
if ! command -v pyenv &> /dev/null; then
    echo "pyenvがインストールされていません。インストールしてください。"
    exit 1
fi

# Pythonバージョンのインストール
pyenv install 3.12.7  # 必要なバージョンを指定
pyenv local 3.12.7

# poetryのインストール
if ! command -v poetry &> /dev/null; then
    echo "poetryがインストールされていません。インストールしてください。"
    exit 1
fi

# 依存関係のインストール
poetry install

#!/bin/bash

# hello_worldディレクトリに移動
cd "/home/runner/work/AlgoShowcase/AlgoShowcase/algorithms/hello_world" || { echo "ディレクトリの移動に失敗しました"; exit 1; }

# hello_world.* ファイルを実行
for file in ` find . -name "hello.*" -print`; do
    echo $file
    # 拡張子によって実行コマンドを変更
    case "$file" in
        *.py)
            echo "Running $file..."
            python "$file"
            ;;
        *.R)
            echo "Running $file..."
            Rscript "$file"
            ;;
        *.nim)
            echo "Running $file..."
            nim c -r "$file"
            ;;
        *.cs)
            echo "Running $file..."
            mcs -out:"$file".exe "$file"
            mono "$file".exe
            ;;
        *)
            echo "Unsupported file type: $file"
            ;;
    esac
    echo '/n'
done
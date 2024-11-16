#!/bin/bash

# hello_worldディレクトリに移動
cd "../hello_world" || { echo "ディレクトリの移動に失敗しました"; exit 1; }

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
        *)
            echo "Unsupported file type: $file"
            ;;
    esac
    echo 
done
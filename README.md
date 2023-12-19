# Kyo-s-s/LaTeX

VSCode + Docker を使った $\text{up}\LaTeX$ 環境です。

## Setup
1. Docker を使えるようにする

    - Windowsの場合 

        1. WSL2を有効にする。
    
        2. https://www.docker.com/products/docker-desktop/ からDocker Desktopをダウンロードする。

    - Mac の場合
        1. (AppleシリコンMacのみ) Rosetta2をインストールする。ターミナルで、
        ```
        softwareupdate --install-rosetta
        ```
        を叩けばよいらしい(未検証)。

        1. https://www.docker.com/products/docker-desktop/ からDocker Desktopをダウンロードする。Intelの場合はIntel Chipを、Appleシリコンの場合はApple Chipを選ぶ。

1. VSCode を入れる
  
    - https://miya-system-works.com/blog/detail/vscode-install/ に従うとよい。日本語化はお好みで。

1. このリポジトリをクローン or ダウンロードし、VSCodeで開く
  
    - ダウンロードする場合

        1. 右上のCode -> Download ZIP からダウンロードする。

        1. 展開し、好きな場所に配置する。

        1. VSCodeで開く。

1. VSCodeに拡張機能 [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) を入れる。

1. 左下の`><`をクリックし、`Reopen in Container` をクリックする。

1. 次のコマンドを叩く:
```
npm install
```


## Usage
保存時に自動でタイプセットされるようになっています。デフォルトだと $\text{up}\LaTeX$ でタイプセットされます。変えたい場合は`.devcontainer/.latexmkrc`を書き換えてください。


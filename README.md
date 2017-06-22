# Word嫌いのためのWord編集術

次回 6/23 19:00- の勉強会では**Word嫌いのためのWord編集術**と題して，（ほとんど）Microsoft Word を使わずに，きれいに整った Word 文書を作成する方法について紹介します．

この企画のきっかけは，ある人の「な，なんじゃこりゃあああああ！」でした．

>「これをベースにしてね」と渡されたWordファイル。
> とりあえずスタイルを確認して愕然とする。
> な、なんじゃこりゃあああああ！
> 超絶ボリュームの無秩序なドキュメントを前に、僕はどうすればいいのでしょうか…。

`pandoc` を中心に，メタデータや参照ドキュメント機構とかまで紹介します．標題の指定，目次，図表などの挿入，スタイル設定，時間があったら相互参照，数式の利用，文献リストの生成まで紹介しようと思います．

## 使用するソフトウェア

- テキストエディタ

- `pandoc`: 汎用Markdownプロセッサ．htmlはもちろん，docx, epub, LaTeX, man, PDF, wiki, 各種Markdown方言，各種スライドショーなどを出力できます．(`brew install pandoc`)

- Microsoft Word: できあがった Word 文書を閲覧するため．スタイリングにも使います．

- Markdown のサポートツール: 手元で編集したMarkdownの様子を眺められるツールがあると嬉しいかも．

- `sed`: UNIX標準の正規表現の変換ツール

- `pandoc` 用の拡張ツール

    - `pandoc-crossref`: 相互参照のため図表，数式などに番号づけをする

    - `pandoc-citeproc`: 文献リストを挿入する

    - 拡張ツールのインストール方法

        pandoc とここで紹介する拡張ツールはいずれも Haskell で実装されております．拡張パッケージのインストールに `cabal` という Haskell のパッケージ管理システムを用います．`pandoc` と `cabal-install` は Homebrew でインストールし，残りは `cabal` を用います．なお，`cabal` は `$HOME/.cabal/bin` にインストールします．今回は実行スクリプトのなかでこのディレクトリを`PATH`に追加しているので，`PATH`設定は不要ですが，日常的に`pandoc`を使うのであれば`$HOME/.cabal/bin`を`PATH`に追加するとよいでしょう．

        Mac では

        ```
        brew install pandoc pandoc-citeproc pandoc-crossref
        ```

        Bash for Windows on Ubuntu では

        ```
        現在調査中です．．．
        ```

- `Git`: このリポジトリのダウンロードに使えるけれど，なくても大丈夫

## 実習

- （著作権の関係から）[日本国憲法のテキスト](http://law.e-gov.go.jp/htmldata/S21/S21KE000.html)を使います．これをそのまま複製して，Markdown化したものが`[doc/constitution.md](doc/constitution.md)`です．

## 内容

`pandoc` を中心に，メタデータや参照ドキュメント機構とかまで紹介します．

- Markdownを用いたdocxの生成
- 標題
- 目次
- 図表などの挿入
- 日本語化設定
- スタイル設定
- 時間があったら
    - 相互参照
    - 数式の利用
    - 文献リストの生成

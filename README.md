# Word嫌いのためのWord編集術

次回 6/23 19:00- の勉強会では**Word嫌いのためのWord編集術**と題して，（ほとんど）Microsoft Word を使わずに，きれいに整った Word 文書を作成する方法について紹介します．

この企画のきっかけは，ある人の「な，なんじゃこりゃあああああ！」でした．

>「これをベースにしてね」と渡されたWordファイル。とりあえずスタイルを確認して愕然とする。な、なんじゃこりゃあああああ！超絶ボリュームの無秩序なドキュメントを前に、僕はどうすればいいのでしょうか…。

`pandoc` を中心に，メタデータや参照ドキュメント機構とかまで紹介します．

*使用するソフト*

- `pandoc`, `pandoc-citeproc`, `pandoc-crossref`, Microsoft Word, `git`

```
brew install pandoc cabal-install
cabal install pandoc-citeproc
cabal install pandoc-crossref
```

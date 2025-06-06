#  X1 compatible ROM for X1 turbo

## 更新履歴

- 2025/05/29 v1.0.0 公開
- 2025/06/01 issue トラックのためfork元からデタッチ
- 2025/06/03 v1.0.1 issue #1, #2 対策。バージョン表示文字列を変更


## はじめに

これは meister68k 氏の GiHub リポジトリ 
[X1_compatible_rom](https://github.com/meister68k/X1_compatible_rom)
をフォークし、X1 turbo 用として IPL 起動直後から漢字 VRAM を利用可能となるよう手を加えたものです。

注）オリジナルの README.md は [README-original.MD](README-original.MD) です。IPL の仕様についてはそちらを参照ください。

## 修正内容

- CRTC 初期化パラメータを高解像度（80 桁、400 ライン）用に変更
- I/O ポート 1A02 で80 桁指定
- I/O ポート 1FD0 で 400 ライン指定
- 80 桁化に合わせ
    - メッセージ表示位置を修正
    - 画面初期化時のテキスト VRAM/アトリビュートのクリア範囲を拡大
    - 画面初期化時の漢字 VRAM の初期化追加

##  IPL イメージ

| ファイル名 | 内容                                          |
| --         | --                                            |
| IPLROM.X1  | オリジナルの X1_compatible_rom.bin と同一内容 |
| IPLROM.X1T | X1 turbo 高解像度対応                         |

- 確認は武田氏の x1turbo.exe で確認しています。

## 画面

### 起動画面

![screen.png](screen.png)

### 漢字表示例

![kanji.png](kanji.png)

## ビルド

- make でビルドします。
- オリジナルの makefile は makefile-original へリネームし、新たに Makefile を作成しています。
- アセンブラは AILZ80ASM を使用します。
- コマンドラインからのラベル定義（-dl）でビルドを分けています。

| ターゲット | -dl 指定 |
| --         | --       |
| IPLROM.X1  | なし     |
| IPLROM.X1T | TURBO    |

## ライセンス

- フォーク元の [X1_compatible_rom](https://github.com/meister68k/X1_compatible_rom) のライセンスに準じます。
（[CC0](https://creativecommons.org/publicdomain/zero/1.0/deed.ja)）

## 関連リンク

- フォーク元リポジトリ [X1_compatible_rom](https://github.com/meister68k/X1_compatible_rom)
- アセンブラ [AILZ80ASSM](https://github.com/AILight/AILZ80ASM)
- 武田氏エミュレータ [TAKEDA, toshiya's HOME PAGE](http://takeda-toshiya.my.coocan.jp/)

## 関連リポジトリ

- 武田氏エミュレータ修正版 https://github.com/dogatana/enhance-TAKEDAs-emulator
- X1turbo 漢字用charmap https://github.com/dogatana/x1turbo-charmap
- X1 エミュレータ用漢字フォント https://github.com/dogatana/x1-emulator-kanji-font

## 謝辞

フォーク元の互換 IPL 作者 meister68k 氏に深く感謝します。



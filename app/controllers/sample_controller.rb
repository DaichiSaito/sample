class SampleController < ApplicationController
  def top; end

  def foo
    # 実際には3DセキュアのAPIを叩いてHTMLを取ってくる？（DBに保存されている場合はそれを取ってくる）
    @html = <<~TEXT
      <html>
        <head>
          <title>リダイレクト用ページ</title>
        </head>
        <body>
          <form action="/form.html" name="form">

          </form>
          リダイレクト中です...
          <script>window.onload = () => { setTimeout(() => document.form.submit(), 1000)}</script>
        </body>
      </html>
    TEXT
    render layout: false
  end
end
@rem Transform demos.xml to html.
@rem Use any XSLT tool available. I use 22 years old xalan.

@!xalan\TestXSLT.exe -XSL demos.xsl -IN demos.xml -OUT demos_body
@copy /b demos_header+demos_body+demos_footer ..\docs\demos\index.html
@del demos_body

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
        doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" indent="yes"
        method="xml"/>
    <xsl:template match="/">
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <style type="text/css">
                    h1 {
                        text-align : center;
                    }</style>
                <title>Katalog - Übersicht</title>
            </head>
            <body>
                <h1 align="center">Katalog - Übersicht</h1>
                <p>Zahl der katalogisierten Einheiten: <xsl:value-of select="count(katalog/eintrag)"
                    /></p>
                <p>Zahl verfügbarer Einheiten: <xsl:value-of
                        select="count(katalog/eintrag[status='verfügbar'])"/></p>
                <p>Zahl nicht verfügbarer Einheiten: <xsl:value-of
                        select="count(katalog/eintrag[status='nicht verfügbar'])"/></p>
                <hr/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

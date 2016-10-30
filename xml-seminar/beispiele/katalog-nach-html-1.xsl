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
                    }
                    div.catalog-entry {
                        border-width : 1px;
                        border-style : solid;
                        border-color : grey;
                        padding : 2.5em;
                        text-align : justify;
                    }</style>
                <title>Katalog</title>
            </head>
            <body>
                <h1>Katalog</h1>
                <xsl:apply-templates/>
                <hr/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="eintrag">
        <div class="catalog-entry">
            <p>Eintrag Nr. <xsl:value-of select="@nummer"/>:</p>
            <ul>
                <li>Name: <xsl:value-of select="name"/></li>
                <li>Verfügbarkeit: <xsl:value-of select="status"/></li>
            </ul>
        </div>
    </xsl:template>
</xsl:stylesheet>

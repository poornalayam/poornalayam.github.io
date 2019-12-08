<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:itunes="http://www.itunes.com/dtds/podcast-1.0.dtd" version="2.0">

    <xsl:output method="html" indent="yes" encoding="UTF-8"/>

    <xsl:template match="rss/channel">
        <html lang="en-us">
            <head>
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width,initial-scale=1"/>
                <meta name="theme-color" content="#ff8000"/>
                <title><xsl:value-of select="title"/></title>
                <link rel="stylesheet" type="text/css" media="all" href="https://fonts.googleapis.com/css?family=Open+Sans" />
                <link rel="stylesheet" type="text/css" media="all" href="/css/style.min.css" />
            </head>

            <body class="body mobile" itemscope="" itemtype="http://schema.org/WebPage">
                <div class="wrapper clearfix">
                    <div class="post__content clearfix">
                        <h1><a href="https://www.poornalayam.org">Poornalayam</a> | <xsl:value-of select="itunes:subtitle"/></h1>
                        <h2><xsl:value-of select="title"/></h2>
                        <p><xsl:value-of select="itunes:summary"/></p>

                        <table>
                            <tr><th>Class Name</th><th>Download Audio</th><th>Duration</th></tr>
                            <xsl:for-each select="item">
                            <xsl:sort selec="order"/>
                                <tr>
                                <td align="left"><xsl:value-of select="itunes:summary"/></td>
                                <td align="center"><a><xsl:attribute name="href"><xsl:value-of select="enclosure/@url"/></xsl:attribute>Download</a></td>
                                <td align="center"><xsl:value-of select="itunes:duration"/></td>
                                </tr>
                            </xsl:for-each>
                        </table>
                    </div>
                    <footer class="footer">
                        <p class="footer__copyright"><xsl:value-of select="copyright"/></p>
                    </footer>
                </div>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

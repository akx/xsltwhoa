<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
      <html>
        <head>
          <style>
            body {
              background: pink;
              color: purple;
              font: 18pt comic sans ms;

            }
            article {
              max-width: 35em;
              padding: 1em;
              margin: auto;
            }
            div {
              padding: .5em;
              margin: .5em 0;
              border: 1px dotted white;
            }
          </style>
        </head>
        <body>
          <xsl:apply-templates/>
        </body>
      </html>
    </xsl:template>

    <xsl:template match="artikkeli">
      <article>
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
      </article>
    </xsl:template>

    <xsl:template match="otsikko">
      <h1>
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
      </h1>
    </xsl:template>

    <xsl:template match="juttu">
      <div>
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
      </div>
    </xsl:template>
</xsl:transform>

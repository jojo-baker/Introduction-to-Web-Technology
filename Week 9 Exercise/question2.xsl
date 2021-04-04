<?xml version="1.0" ?>
<xsl:stylesheet
version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="xml" indent="yes" encoding="UTF-8"/>
<xsl:template match="/result">
<html>

    <head>
        <title>XSLT example</title>
        <style>
            #examResult {
                border: solid black 1px;
                border-collapse: separate;
                border-spacing: 5px;
            }
            #examResult td {
                border: dashed gray 1px;
                padding: 10px;
            }

            .col1 {
                color: gray;
                text-align: right;
                font-size: 12px;
            }
            .col2 {
                color: maroon;
                text-align: left;
                font-size: 20px;
            }
        </style>
    </head>

    <body>
        <h1>Exam Result</h1>
        <br />
        <table id="examResult">
        <tr>
            <td class="col1">Reference number:</td>
            <td class="col2"><xsl:value-of select="@ref" /></td>
        </tr>
        <tr>
            <td class="col1">Exam number:</td>
            <td class="col2"><xsl:value-of select="examId" /></td>
        </tr>
        <tr>
            <td class="col1">Contestant number:</td>
            <td class="col2"><xsl:value-of select="contestantId" /></td>
        </tr>
        <tr>
            <td class="col1">Digital Signature:</td>
            <td class="col2"><xsl:value-of select="digitalSignature" /></td>
        </tr>
        <tr class="col1">
            <td>Score:</td>
            <td class="col2"><xsl:value-of select="score" /></td>
        </tr>
        <tr class="col1">
            <td>Band:</td>
            <td class="col2"><xsl:value-of select="band" /></td>
        </tr>
        </table>
    </body>

</html>
</xsl:template>
</xsl:stylesheet>
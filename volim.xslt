<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
<html>
            <head>
                <style>
                .Lists
                {
                margin-left:auto;
                margin-right:auto;
                }
            div
            {
                text-align:center;
                width:48%;
            }
            td,th
            {
                font-size:larger;
                padding:20px;
                text-align:center !important;
            }
                </style>
            </head>
            <body>
                <h1 style="text-align:center;">VOLIM</h1>
                <h2 style="text-align:center;">Welcome to the world of dance</h2>
                <div class='Lists'>
                    
                    <table border="2">
                        <tr bgcolor="#ff99ff">
                            <th style="text-align:left">category</th>
                            <th style="text-align:left">choreographer</th>
                            <th style="text-align:left">time</th>
                            <th style="text-align:left">fee</th>
                        </tr>
                        <xsl:with-param name="Stocks" select="name" />
                        <xsl:for-each select="dance/dance">
                            <tr>
                                <td>
                                    <xsl:value-of select="category"/>
                                </td>
                                <td>
                                    <xsl:value-of select="choreographer"/>
                                </td>
                                <td>
                                    <xsl:value-of select="time"/>
                                </td>
                                <td>
                                    <xsl:value-of select="fee"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>

            </body>
        </html>
	</xsl:template>
</xsl:stylesheet>
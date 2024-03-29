<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    table {
                        border-collapse: collapse;
                        width: 100%;
                    }
                    th, td {
                        border: 1px solid #dddddd;
                        text-align: left;
                        padding: 8px;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                <h2>Product List</h2>
                <table>
                    <tr>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Category</th>
                    </tr>
                    <xsl:apply-templates select="products/product"/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="product">
        <tr>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="price"/></td>
            <td><xsl:value-of select="category"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>

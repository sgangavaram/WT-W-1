<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <head>
    <style type="text/css">
      table {
        width: 69%;
        border-collapse: collapse;
        display: block;
        align-items: center;
        margin: auto;
        background-color: #ffffff;
      }
      th, td {
        border: 1px solid black;
        padding: 8px;
      }
      th {
        background-color: grey;
        color: white;
      }
      td.author {
        color: blue;
        font-weight: bold;
      }
      td.number {
        color: rgb(30, 53, 74);
      }
      h1 {
        color: white;
        text-align: center;
        background-color: grey;
      }
      body {
        background-color: black;
      }
    </style>
  </head>
  <body>
    <table>
    <h1> My Book Shelf </h1>
      <tr>
        <th>Title</th>
        <th>Author</th>
        <th>ISBN Number</th>
        <th>Publisher</th>
        <th>Edition</th>
        <th>Price</th>
      </tr>
      <xsl:for-each select="Books/book">
      <tr>
        <td><xsl:value-of select="Title"/></td>
        <td class="author"><xsl:value-of select="Author"/></td>
        <td class="number"><xsl:value-of select="ISBN_Number"/></td>
        <td><xsl:value-of select="Publisher"/></td>
        <td><xsl:value-of select="Edition"/></td>
        <td class="number"><xsl:value-of select="Price"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"></link>
            </head>
            <body>
                <div class="container " style="border : 1px solid red ; margin-top : 30px" >

                    <div class="container" style="margin-top : 30px">
                        <div class="row">
                            <div class="content col-12">
                                <div class="row">
                                    <div class="conten1 col-5">
                                        <h1>YOUR LOGO HERE </h1>
                                    </div>
                                    <div class="content2 col-7" style="text-align : right">
                                        <h3>INVOICE #00043</h3>
                                        <xsl:for-each select="WEB/CONTENT/PRODUCT">
                                            <p><xsl:value-of select="INVOICE"/></p>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="container" style="margin-top:30px">
                        <div class="row">
                            <div class="content col-12">
                                <div class="row">
                                    <div class="content1 col-3">
                                        <b>From</b>
                                        <xsl:for-each select="WEB/CONTENT1/PRODUCT">
                                            <p><xsl:value-of select="FROM"/></p>
                                        </xsl:for-each>
                                    </div>
                                    <div class="content2 col-3">
                                        <b>To</b>
                                        <xsl:for-each select="WEB/CONTENT1/PRODUCT">
                                            <p><xsl:value-of select="To"/></p>
                                        </xsl:for-each>
                                    </div>
                                    <div class="content3 col-6">
                                        <b>Invoice description</b>
                                        <xsl:for-each select="WEB/CONTENT1/PRODUCT">
                                            <p><xsl:value-of select="INVOICE_DES"/></p>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="container"  >
                        <div class="row">
                            <table class="table" style="margin-top:100px">
                                <thread>
                                    <th>Item</th>
                                    <th>Quantity</th>
                                    <th>Unit price</th>
                                    <th>subtotal</th>
                                </thread>
                                <tbody>
                                    <xsl:for-each select="WEB/CONTENT2/PRODUCT">
                                        <tr>
                                            <td><xsl:value-of select="ITEM"/></td>
                                            <td><xsl:value-of select="QUANTITY"/></td>
                                            <td><xsl:value-of select="UNIT_PRICE"/></td>
                                            <td><xsl:value-of select="SUBTOTAL"/></td>
                                        </tr>
                                    </xsl:for-each>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
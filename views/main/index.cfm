<cfset prc.settings = getModuleSettings( "cbSwaggerRedoc" )>
<cfset prc.cbox_debugger_show = false>

<cfoutput>
<!-- HTML for static distribution bundle build -->
<!DOCTYPE html>
<html>
    <head>
        <title>Redoc</title>
        <!-- needed for adaptive design -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="icon" href="includes/favicon-32x32.png" type="image/png"/>
        <link
            href="https://fonts.googleapis.com/css?family=Montserrat:300,400,700|Roboto:300,400,700"
            rel="stylesheet"
        />

        <!--
        Redoc doesn't change outer page styles
        -->
        <style>
            body {
            margin: 0;
            padding: 0;
            }
        </style>
    </head>
    <body>
        <!--
        Redoc element with link to your OpenAPI definition
        -->
        <redoc spec-url="#prc.settings.swaggerFiles#"></redoc>
        <!--
        Link to Redoc JavaScript on CDN for rendering standalone element
        -->
        <script src="https://cdn.redoc.ly/redoc/latest/bundles/redoc.standalone.js"></script>
    </body>
    </html>
</cfoutput>
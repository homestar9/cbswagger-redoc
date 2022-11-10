<cfset prc.moduleRoot = event.getModuleRoot() />
<cfset prc.settings = getModuleSettings( "cbswagger-redoc" )>
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
        <link rel="apple-touch-icon" sizes="180x180" href="#prc.moduleRoot#/includes/favicon/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="#prc.moduleRoot#/includes/favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="#prc.moduleRoot#/includes/favicon/favicon-16x16.png">
        <link rel="manifest" href="#prc.moduleRoot#/includes/favicon/site.webmanifest">
        <link rel="mask-icon" href="#prc.moduleRoot#/includes/favicon/safari-pinned-tab.svg" color="##5bbad5">
        <meta name="msapplication-TileColor" content="##da532c">
        <meta name="theme-color" content="##ffffff">
        
        <link
            href="https://fonts.googleapis.com/css?family=Montserrat:300,400,700|Roboto:300,400,700"
            rel="stylesheet"
        />

        <!--Redoc doesn't change outer page styles-->
        <style>
            body {
            margin: 0;
            padding: 0;
            }
        </style>
    </head>
    <body>
        <!--Redoc element with link to your OpenAPI definition-->
        <div id="redoc_container"></div>
        
        <!--Link to Redoc JavaScript on CDN for rendering standalone element-->
        <script src="https://cdn.redoc.ly/redoc/latest/bundles/redoc.standalone.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/redoc-try-it-out/dist/try-it-out.min.js"></script>

        <script>
        RedocTryItOut.init(
            "#prc.settings.swaggerFile#",
            { title: "Pet Store" }, 
            document.getElementById("redoc_container")
        );
        </script>
    </body>
    </html>
</cfoutput>
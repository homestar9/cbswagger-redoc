component {

	// Module Properties
	this.title 				= "cbswagger-redoc";
	this.author 			= "David Levin";
	this.webURL 			= "https://github.com/homestar9/cbswagger-redoc";
	this.description 		= "Swagger Redoc for ColdBox.";
	this.version			= "1.0.0";
	this.entryPoint			= "redoc";
	this.inheritEntryPoint 	= false;
	this.modelNamespace		= "cbSwaggerRedoc";
	this.cfmapping			= "cbSwaggerRedoc";
	this.autoMapModels		= true;
	this.dependencies 		= [];

	function configure(){
		settings = {
			"swaggerFile" : "/cbswagger"
		};

		// Layout Settings
		layoutSettings = {
			defaultLayout = "Main.cfm"
		};

		// SES Routes
		router.route( "/" )
			.withHandler( "Main" )
			.toAction( { "GET": "index" } );
	}

	function onLoad(){
	}

	function onUnload(){
	}

}

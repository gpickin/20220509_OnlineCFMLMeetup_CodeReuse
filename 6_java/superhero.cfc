<cfcomponent>
    <cffunction name="outputSuperHero">
        <cfargument name="superhero" required="true">
        
        <cfreturn "<div><b>Publisher:</b> #arguments.superhero.publisher#</div>
        <div><b>Alter Ego:</b> #arguments.superhero.alter_ego#</div>
        <div><b>First Appearance:</b> #arguments.superhero.first_appearance#</div>
        <div><b>Characters:</b> #arguments.superhero.characters#</div>">

    </cffunction>

    <cfscript>

        function getProperties(){
            return getJavaSystem().getProperties();
        }

        
        /**
         * Retrieve an instance of Java System
         */
        function getJavaSystem(){
            if ( !structKeyExists( variables, "javaSystem" ) ) {
                variables.javaSystem = createObject( "java", "java.lang.System" );
            }
            return variables.javaSystem;
        }
    </cfscript>

</cfcomponent>

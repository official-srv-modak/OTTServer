<?php
function endsWith( $haystack, $needle ) {
        $length = strlen( $needle );
        if( !$length ) 
        {
            return true;
        }
        return substr( $haystack, -$length ) === $needle;
    }
    
echo $_SERVER['PHP_SELF'];
?>

#!/bin/bash

pear upgrade pear

pear config-set preferred_state alpha
pear config-set auto_discover 1

pear channel-discover pear.phpunit.de
pear channel-discover pear.phpdoc.org

pear install --alldeps -f PHP_CodeSniffer
pear install --alldeps -f phpunit/PHP_CodeCoverage
pear install --alldeps -f phpunit/PHP_CodeBrowser
pear install --alldeps -f phpunit/PHPUnit
pear install --alldeps -f phpdoc/phpdocumentor
pear install --alldeps -f phpdoc/phpdocumentor_Template_checkstyle
pear install --alldeps -f phpdoc/phpdocumentor_Template_new_black
pear install --alldeps -f phpdoc/phpdocumentor_Template_old_ocean
pear install --alldeps -f phpdoc/phpdocumentor_Template_responsive
pear install --alldeps -f phpdoc/phpdocumentor_Template_zend
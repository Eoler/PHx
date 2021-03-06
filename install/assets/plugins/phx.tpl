//<?php
/**
 * PHx 
 * 
 * (Placeholders Xtended) Adds the capability of output modifiers when using placeholders, template variables and settings tags
 *
 * @category    plugin
 * @version     2.2.1
 * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @author      Armand "bS" Pondman (apondman@zerobarrier.nl)
 * @internal    @properties &phxdebug=Log events;int;0 &phxmaxpass=Max. Passes;int;50
 * @internal    @events OnParseDocument
 * @internal    @modx_category Manager and Admin
 * @internal    @installset base, sample
 */
if (!class_exists('PHxParser')) {
    include MODX_BASE_PATH . "assets/plugins/phx/phx.parser.class.inc.php";
}

$e = &$modx->Event;
switch($e->name) {
	case 'OnParseDocument':
		$PHx = new PHxParser($phxdebug,$phxmaxpass);
		$PHx->OnParseDocument();
		break;
}

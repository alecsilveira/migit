var isCompatible=function(){if(navigator.appVersion.indexOf('MSIE')!==-1&&parseFloat(navigator.appVersion.split('MSIE')[1])<6){return false;}return true;};var startUp=function(){mw.config=new mw.Map(true);mw.loader.register([["site","1340815984",[],"site"],["noscript","1340815984",[],"noscript"],["startup","1367984328",[],"startup"],["user","1340815984",[],"user"],["user.groups","1340815984",[],"user"],["user.options","1340815984",[],"private"],["user.tokens","1340815984",[],"private"],["filepage","1340815984",[]],["skins.vector","1340815984",[]],["skins.monobook","1340815984",[]],["skins.simple","1340815984",[]],["skins.chick","1340815984",[]],["skins.modern","1340815984",[]],["skins.cologneblue","1340815984",[]],["skins.nostalgia","1340815984",[]],["skins.standard","1340815984",[]],["jquery","1340815984",[]],["jquery.async","1340815984",[]],["jquery.appear","1340815984",[]],["jquery.autoEllipsis","1340815984",["jquery.highlightText"]],["jquery.byteLength","1340815984",[]],[
"jquery.byteLimit","1340815984",["jquery.byteLength"]],["jquery.checkboxShiftClick","1340815984",[]],["jquery.client","1340815984",[]],["jquery.collapsibleTabs","1340815984",[]],["jquery.colorUtil","1340815984",[]],["jquery.color","1340815984",["jquery.colorUtil"]],["jquery.cookie","1340815984",[]],["jquery.delayedBind","1340815984",[]],["jquery.expandableField","1340815984",["jquery.delayedBind"]],["jquery.form","1340815984",[]],["jquery.getAttrs","1340815984",[]],["jquery.highlightText","1340815984",[]],["jquery.hoverIntent","1340815984",[]],["jquery.messageBox","1340815984",[]],["jquery.placeholder","1340815984",[]],["jquery.json","1340815984",[]],["jquery.localize","1340815984",[]],["jquery.makeCollapsible","1359265242",[]],["jquery.mwPrototypes","1340815984",[]],["jquery.qunit","1340815984",[]],["jquery.suggestions","1340815984",["jquery.autoEllipsis"]],["jquery.tabIndex","1340815984",[]],["jquery.tablesorter","1359363207",[]],["jquery.textSelection","1340815984",[]],[
"jquery.tipsy","1340815984",[]],["jquery.ui.core","1340815984",["jquery"],"jquery.ui"],["jquery.ui.widget","1340815984",[],"jquery.ui"],["jquery.ui.mouse","1340815984",["jquery.ui.widget"],"jquery.ui"],["jquery.ui.position","1340815984",[],"jquery.ui"],["jquery.ui.draggable","1340815984",["jquery.ui.core","jquery.ui.mouse","jquery.ui.widget"],"jquery.ui"],["jquery.ui.droppable","1340815984",["jquery.ui.core","jquery.ui.mouse","jquery.ui.widget","jquery.ui.draggable"],"jquery.ui"],["jquery.ui.resizable","1340815984",["jquery.ui.core","jquery.ui.widget","jquery.ui.mouse"],"jquery.ui"],["jquery.ui.selectable","1340815984",["jquery.ui.core","jquery.ui.widget","jquery.ui.mouse"],"jquery.ui"],["jquery.ui.sortable","1340815984",["jquery.ui.core","jquery.ui.widget","jquery.ui.mouse"],"jquery.ui"],["jquery.ui.accordion","1340815984",["jquery.ui.core","jquery.ui.widget"],"jquery.ui"],["jquery.ui.autocomplete","1340815984",["jquery.ui.core","jquery.ui.widget","jquery.ui.position"],"jquery.ui"],[
"jquery.ui.button","1340815984",["jquery.ui.core","jquery.ui.widget"],"jquery.ui"],["jquery.ui.datepicker","1340815984",["jquery.ui.core"],"jquery.ui"],["jquery.ui.dialog","1340815984",["jquery.ui.core","jquery.ui.widget","jquery.ui.button","jquery.ui.draggable","jquery.ui.mouse","jquery.ui.position","jquery.ui.resizable"],"jquery.ui"],["jquery.ui.progressbar","1340815984",["jquery.ui.core","jquery.ui.widget"],"jquery.ui"],["jquery.ui.slider","1340815984",["jquery.ui.core","jquery.ui.widget","jquery.ui.mouse"],"jquery.ui"],["jquery.ui.tabs","1340815984",["jquery.ui.core","jquery.ui.widget"],"jquery.ui"],["jquery.effects.core","1340815984",["jquery"],"jquery.ui"],["jquery.effects.blind","1340815984",["jquery.effects.core"],"jquery.ui"],["jquery.effects.bounce","1340815984",["jquery.effects.core"],"jquery.ui"],["jquery.effects.clip","1340815984",["jquery.effects.core"],"jquery.ui"],["jquery.effects.drop","1340815984",["jquery.effects.core"],"jquery.ui"],["jquery.effects.explode",
"1340815984",["jquery.effects.core"],"jquery.ui"],["jquery.effects.fold","1340815984",["jquery.effects.core"],"jquery.ui"],["jquery.effects.highlight","1340815984",["jquery.effects.core"],"jquery.ui"],["jquery.effects.pulsate","1340815984",["jquery.effects.core"],"jquery.ui"],["jquery.effects.scale","1340815984",["jquery.effects.core"],"jquery.ui"],["jquery.effects.shake","1340815984",["jquery.effects.core"],"jquery.ui"],["jquery.effects.slide","1340815984",["jquery.effects.core"],"jquery.ui"],["jquery.effects.transfer","1340815984",["jquery.effects.core"],"jquery.ui"],["mediawiki","1340815984",[]],["mediawiki.Title","1340815984",["mediawiki.util"]],["mediawiki.Uri","1340815984",[]],["mediawiki.htmlform","1340815984",[]],["mediawiki.user","1340815984",["jquery.cookie"]],["mediawiki.page.startup","1340815984",["jquery.client"]],["mediawiki.page.ready","1340815984",["jquery.checkboxShiftClick","jquery.makeCollapsible","jquery.placeholder"]],["mediawiki.util","1340815984",["jquery.client"
,"jquery.cookie","jquery.messageBox","jquery.mwPrototypes"]],["mediawiki.libs.jpegmeta","1340815984",[]],["mediawiki.action.history","1340815984",["jquery.ui.button"],"mediawiki.action.history"],["mediawiki.action.history.diff","1340815984",[],"mediawiki.action.history"],["mediawiki.action.edit","1340815984",["jquery.textSelection","jquery.byteLimit"]],["mediawiki.action.view.rightClickEdit","1340815984",[]],["mediawiki.action.view.metadata","1340815984",[]],["mediawiki.action.watch.ajax","1359298559",[]],["mediawiki.special","1340815984",[]],["mediawiki.special.preferences","1363549818",[]],["mediawiki.special.changeslist","1340815984",["jquery.makeCollapsible"]],["mediawiki.special.search","1340815984",[]],["mediawiki.special.block","1340815984",[]],["mediawiki.special.undelete","1340815984",[]],["mediawiki.special.movePage","1340815984",["jquery.byteLimit"]],["mediawiki.special.recentchanges","1340815984",["mediawiki.special"]],["mediawiki.special.upload","1367984328",[
"mediawiki.libs.jpegmeta"]],["mediawiki.language","1340815984",[]],["mediawiki.legacy.ajax","1340815984",["mediawiki.legacy.wikibits"]],["mediawiki.legacy.commonPrint","1340815984",[]],["mediawiki.legacy.config","1340815984",["mediawiki.legacy.wikibits"]],["mediawiki.legacy.IEFixes","1340815984",["mediawiki.legacy.wikibits"]],["mediawiki.legacy.mwsuggest","1340815984",["mediawiki.legacy.wikibits","jquery.client"]],["mediawiki.legacy.preview","1340815984",["mediawiki.legacy.wikibits"]],["mediawiki.legacy.protect","1340815984",["mediawiki.legacy.wikibits","jquery.byteLimit"]],["mediawiki.legacy.shared","1340815984",[]],["mediawiki.legacy.oldshared","1340815984",[]],["mediawiki.legacy.upload","1340815984",["mediawiki.legacy.wikibits"]],["mediawiki.legacy.wikibits","1359265242",["mediawiki.language"]],["mediawiki.legacy.wikiprintable","1340815984",[]],["ext.checkUser","1340815984",["mediawiki.util"]]]);mw.config.set({"wgLoadScript":"/wiki/load.php","debug":false,"skin":"vector","stylepath"
:"/wiki/skins","wgUrlProtocols":"http\\:\\/\\/|https\\:\\/\\/|ftp\\:\\/\\/|irc\\:\\/\\/|ircs\\:\\/\\/|gopher\\:\\/\\/|telnet\\:\\/\\/|nntp\\:\\/\\/|worldwind\\:\\/\\/|mailto\\:|news\\:|svn\\:\\/\\/|git\\:\\/\\/|mms\\:\\/\\/|\\/\\/","wgArticlePath":"/wiki/index.php/$1","wgScriptPath":"/wiki","wgScriptExtension":".php","wgScript":"/wiki/index.php","wgVariantArticlePath":false,"wgActionPaths":[],"wgServer":"http://wiki.inkscape.org","wgUserLanguage":"en","wgContentLanguage":"en","wgVersion":"1.18.0","wgEnableAPI":true,"wgEnableWriteAPI":true,"wgDefaultDateFormat":"dmy","wgMonthNames":["","January","February","March","April","May","June","July","August","September","October","November","December"],"wgMonthNamesShort":["","Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"wgSeparatorTransformTable":["",""],"wgDigitTransformTable":["",""],"wgMainPageTitle":"Inkscape","wgFormattedNamespaces":{"-2":"Media","-1":"Special","0":"","1":"Talk","2":"User","3":"User talk","4":
"Inkscape Wiki","5":"Inkscape Wiki talk","6":"File","7":"File talk","8":"MediaWiki","9":"MediaWiki talk","10":"Template","11":"Template talk","12":"Help","13":"Help talk","14":"Category","15":"Category talk"},"wgNamespaceIds":{"media":-2,"special":-1,"":0,"talk":1,"user":2,"user_talk":3,"inkscape_wiki":4,"inkscape_wiki_talk":5,"file":6,"file_talk":7,"mediawiki":8,"mediawiki_talk":9,"template":10,"template_talk":11,"help":12,"help_talk":13,"category":14,"category_talk":15,"image":6,"image_talk":7,"project":4,"project_talk":5},"wgSiteName":"Inkscape Wiki","wgFileExtensions":["png","gif","jpg","jpeg","svg","svgz","pdf"],"wgDBname":"inkscape_wiki","wgFileCanRotate":true,"wgAvailableSkins":{"simple":"Simple","nostalgia":"Nostalgia","modern":"Modern","monobook":"MonoBook","standard":"Standard","vector":"Vector","myskin":"MySkin","cologneblue":"CologneBlue","chick":"Chick"},"wgExtensionAssetsPath":"/wiki/extensions","wgCookiePrefix":"inkscape_wiki_mw01_","wgResourceLoaderMaxQueryLength":-1,
"wgLegacyJavaScriptGlobals":true,"wgCaseSensitiveNamespaces":[]});};if(isCompatible()){document.write("\x3cscript src=\"/wiki/load.php?debug=false\x26amp;lang=en\x26amp;modules=jquery%2Cmediawiki\x26amp;only=scripts\x26amp;skin=vector\x26amp;version=20111007T213225Z\"\x3e\x3c/script\x3e");}delete isCompatible;;

/* cache key: inkscape_wiki-mw01_:resourceloader:filter:minify-js:4:ddb8589a2f99d4a5b15014f160c0811c */
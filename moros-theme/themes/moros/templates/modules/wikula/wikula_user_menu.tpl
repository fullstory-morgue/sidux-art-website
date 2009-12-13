<!--[* $Id: wikula_user_menu.tpl 83 2008-12-17 04:04:58Z mateo $ *]-->

<div id="wikulaheader">
  <div class="header"><!--[pnmodgetvar module='wikula' name='root_page' assign='root_page']--> 
    <h2><!--[wikiname]--> &#187; <a href="<!--[pnmodurl modname='wikula' func='backlinks' tag=$tag|urlencode]-->" title="BackLinks"><!--[$tag|pnvarprepfordisplay]--></a></h2>    
	
    <div class="pn-menu">
    <!--[if $tag neq $root_page]-->
      <a href="<!--[pnmodurl modname='wikula']-->" title="<!--[$root_page]-->"><!--[$root_page]--></a>
    <!--[else]-->
      <span><!--[$root_page]--></span>
    <!--[/if]-->

    <span class="text_separator">::</span>

    <!--[if $tag neq $smarty.const._WIKULA_PAGE_CATEGORYCATEGORY]-->
      <a href="<!--[pnmodurl modname='wikula' type='user' tag=$smarty.const._WIKULA_PAGE_CATEGORYCATEGORY]-->" title=""><!--[ pnml name='_CATEGORIES' ]--></a>
    <!--[else]-->
      <span><!--[ pnml name='_CATEGORIES' ]--></span>
    <!--[/if]-->

    <span class="text_separator">::</span>

    <!--[if $tag neq $smarty.const._WIKULA_PAGE_PAGEINDEX]-->
      <a href="<!--[pnmodurl modname='wikula' type='user' tag=$smarty.const._WIKULA_PAGE_PAGEINDEX]-->" title=""><!--[ pnml name='_WIKULA_PAGEINDEX' ]--></a>
    <!--[else]-->
      <span><!--[ pnml name='_WIKULA_PAGEINDEX' ]--></span>
    <!--[/if]-->

    <span class="text_separator">::</span>

    <!--[if $tag neq $smarty.const._WIKULA_PAGE_TEXTSEARCH]-->
      <a href="<!--[pnmodurl modname='wikula' type='user' tag=$smarty.const._WIKULA_PAGE_TEXTSEARCH]-->" title=""><!--[ pnml name='_SEARCH' ]--></a>
    <!--[else]-->
      <span><!--[ pnml name='_SEARCH' ]--></span>
    <!--[/if]-->

    <span class="text_separator">::</span>

    <!--[if $tag neq $smarty.const._WIKULA_PAGE_HELP]-->
      <a href="<!--[pnmodurl modname='wikula' type='user' tag=$smarty.const._WIKULA_PAGE_HELP]-->" title=""><!--[ pnml name='_HELP' ]--></a>
    <!--[else]-->
      <span><!--[ pnml name='_HELP' ]--></span>
    <!--[/if]-->

    <span class="text_separator">::</span>

    <!--[if $canedit eq true]-->
      <a href="<!--[pnmodurl modname='wikula' func='edit' previous=$showpage.id|urlencode tag=$tag|urlencode]-->" title="<!--[ pnml name='_WIKULA_EDITPAGE' ]-->"><!--[ pnml name='_WIKULA_EDITPAGE' ]--></a>
      <span class="text_separator">::</span>
    <!--[/if]-->

    <!--[pnuserloggedin assign='islogged']-->
    <!--[if $islogged eq false]-->
      <a href="<!--[pnmodurl modname='Users' func='loginscreen']-->" title=""><!--[ pnml name='_LOGIN' ]--></a>
      <span class="text_separator">::</span>
    <!--[/if]-->

    <!--[if $tag neq $smarty.const._WIKULA_PAGE_RECENTCHANGES]-->
      <a href="<!--[pnmodurl modname='wikula' type='user' tag=$smarty.const._WIKULA_PAGE_RECENTCHANGES]-->" title=""><!--[ pnml name='_WIKULA_RECENTCHANGES' ]--></a>
    <!--[else]-->
      <span><!--[ pnml name='_WIKULA_RECENTCHANGES' ]--></span>
    <!--[/if]-->
    <a href="<!--[pnmodurl modname='wikula' func='recentchangesxml' theme='rss']-->" title="<!--[pnml name='_WIKULA_RECENTCHANGESFEED']-->"><!--[pnimg modname='wikula' src='rss.png' title='_WIKULA_RECENTCHANGESFEED' titleml=true alt='RSS']--></a>
    </div>

    <!--[insert name='getstatusmsg']-->
  </div>
</div>

<!--[* $Id: wikula_user_show.tpl 83 2008-12-17 04:04:58Z mateo $ *]-->
<!--[include file='wikula_user_menu.tpl' tag=$tag]-->

<div id="wikula">
  <!--[if $showpage.latest eq 'N']-->
    <!--[pnmodurl modname='wikula' tag=$showpage.tag assign='showpageurl']-->
    <!--[pnmodurl modname='wikula' tag=$showpage.tag func='revisions' assign='revisionsurl']-->
    <div class="revisioninfo">
      <h4><!--[pnml name='_WIKULA_REVISIONX' id=$showpage.id]--></h4>
      <p><!--[pnml name='_WIKULA_THISISAREVISIONOF' tag=$showpage.tag url=$showpageurl user=$showpage.user revisionsurl=$revisionsurl time=$time html=1]--></p>
      <form class="left" action="<!--[pnmodurl modname='wikula' tag=$tag|urlencode]-->" method="post" enctype="application/x-www-form-urlencoded">
        <input type="hidden" value="<!--[$showpage.time|pnvarprepfordisplay]-->" name="time"/>
        <input type="hidden" value="1" name="raw"/>
        <input type="submit" value="<!--[pnml name='_WIKULA_SHOWSOURCE']-->"/> 
      </form>
      <form action="<!--[pnmodurl modname='wikula' func='edit' tag=$tag|urlencode]-->" method="post" enctype="application/x-www-form-urlencoded">
        <input type="hidden" value="<!--[$showpage.id|pnvarprepfordisplay]-->" name="previous" />
        <input type="hidden" value="<!--[$showpage.time|pnvarprepfordisplay]-->" name="time"/>
        <input type="submit" value="<!--[pnml name='_WIKULA_REEDITREVISION']-->"/>
      </form>
      <div class="clear"></div>
    </div>
  <!--[/if]-->

  <div class="page">
	<!--[if $modvars.hidehistory neq true]-->
	  <!--[* invokes the pagehistory directly *]-->
	  <!--[pnmodapifunc modname='wikula' type='action' func='pageauthors' tag=$tag page=$page]-->
	<!--[/if]-->

    <!--[* $body is the variable containing the stuff *]-->
    <!--[$showpage.body|wakka|pnmodcallhooks:'wikula']-->
  </div>

  <div class="wiki_footer">
    <div style="text-align:left; padding:4px;">
      <form action="<!--[textsearchlink]-->" method="post" enctype="application/x-www-form-urlencoded">
      <div>
        <!--[if $canedit eq true]-->
        <a href="<!--[pnmodurl modname='wikula' func='edit' previous=$showpage.id|urlencode tag=$tag|urlencode]-->" title="<!--[ pnml name='_WIKULA_EDITPAGE' ]-->"><!--[ pnml name='_WIKULA_EDITPAGE' ]--></a>
        <span class="text_separator">::</span>
        <!--[/if]-->
        <a href="<!--[pnmodurl modname='wikula' func='history' tag=$tag|urlencode]-->" title="<!--[ pnml name='_WIKULA_PAGEHISTORY' ]-->"><!--[ pnml name='_WIKULA_PAGEHISTORY' ]--></a>
        <span class="text_separator">::</span>
        <!--[pnml name='_WIKULA_PAGEREVISIONSFEED' tag=$tag assign='altrssfeed']-->
        <a href="<!--[pnmodurl modname='wikula' tag=$tag|urlencode time=$showpage.time|urlencode]-->" class="datetime"><!--[$showpage.time|pnvarprepfordisplay]--></a> <a href="<!--[pnmodurl modname='wikula' func='RevisionsXML' tag=$tag|urlencode theme='rss']-->" title="<!--[$altrssfeed]-->"><!--[pnimg src='rss.png' alt=$altrssfeed modname='wikula']--></a>
        <span class="text_separator">::</span>
        <!--[ pnml name='_WIKULA_OWNER' ]-->: <!--[$showpage.owner|userprofilelink]-->
        <span class="text_separator">::</span>
        <!--[pnuserloggedin assign='islogged']-->
        <!--[if $islogged]-->
        <a href="<!--[pnmodurl modname='wikula' func='referrers' tag=$tag|urlencode]-->" title="<!--[ pnml name='_WIKULA_REFERERS' ]-->"><!--[ pnml name='_WIKULA_REFERERS' ]--></a>
        <span class="text_separator">::</span>
        <!--[/if]-->
      </div>
      </form>
    </div>
  </div>
</div>

<div class="clear"></div>
<div>
  <!--[* the next code is to display any hooks (e.g. comments, ratings) *]-->
  <!--[pnmodurl modname='wikula' func='display' tag=$tag assign='returnurl']-->
  <!--[pnmodcallhooks hookobject='item' hookaction='display' hookid=$tag module='wikula' returnurl=$returnurl]-->
</div>
<!--[*include file='wikula_user_footer.tpl'*]-->

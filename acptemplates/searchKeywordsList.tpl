{include file='header' pageTitle='wcf.acp.search.keyword.list'}

<header class="boxHeadline">
	<h1>{lang}wcf.acp.search.keyword.list{/lang}</h1>
</header>

<div class="contentNavigation">
	{pages print=true assign=pagesLinks controller='SearchKeywordsList' link="pageNo=%d&sortField=$sortField&sortOrder=$sortOrder"}
	
	{hascontent}
		<nav>
			<ul>
				{content}
					{event name='contentNavigationButtonsTop'}
				{/content}
			</ul>
		</nav>
	{/hascontent}
</div>

{if $objects|count}
	<div class="tabularBox tabularBoxTitle marginTop">
		<header>
			<h2>{lang}wcf.acp.search.keyword.list{/lang} <span class="badge badgeInverse">{#$items}</span></h2>
		</header>
		
		<table class="table">
			<thead>
				<tr>
					<th class="columnID columnKeywordID{if $sortField == 'keywordID'} active {@$sortOrder}{/if}"><a href="{link controller='SearchKeywordsList'}pageNo={@$pageNo}&sortField=keywordID&sortOrder={if $sortField == 'keywordID' && $sortOrder == 'ASC'}DESC{else}ASC{/if}{/link}">{lang}wcf.global.objectID{/lang}</a></th>
					<th class="columnText columnKeyword{if $sortField == 'keyword'} active {@$sortOrder}{/if}"><a href="{link controller='SearchKeywordsList'}pageNo={@$pageNo}&sortField=keyword&sortOrder={if $sortField == 'keyword' && $sortOrder == 'ASC'}DESC{else}ASC{/if}{/link}">{lang}wcf.acp.search.keyword.keyword{/lang}</a></th>
					<th class="columnText columnSearches{if $sortField == 'searches'} active {@$sortOrder}{/if}"><a href="{link controller='SearchKeywordsList'}pageNo={@$pageNo}&sortField=searches&sortOrder={if $sortField == 'searches' && $sortOrder == 'ASC'}DESC{else}ASC{/if}{/link}">{lang}wcf.acp.search.keyword.searches{/lang}</a></th>
					<th class="columnDate columnTime{if $sortField == 'lastSearchTime'} active {@$sortOrder}{/if}"><a href="{link controller='SearchKeywordsList'}pageNo={@$pageNo}&sortField=lastSearchTime&sortOrder={if $sortField == 'lastSearchTime' && $sortOrder == 'ASC'}DESC{else}ASC{/if}{/link}">{lang}wcf.acp.search.keyword.lastSearchTime{/lang}</a></th>
					{event name='columnHeads'}
				</tr>
			</thead>
			
			<tbody>
				{foreach from=$objects item='searchKeyword'}
					<tr>
						<td class="columnID columnkeywordID">{@$searchKeyword->keywordID}</td>
						<td class="columnText columnkeyword">{$searchKeyword->keyword}</td>
						<td class="columnSmallText columnSearches">{$searchKeyword->searches}</td>
						<td class="columnDate columnLastSearchTime">{@$searchKeyword->lastSearchTime|time}</td>
						{event name='columns'}
					</tr>
				{/foreach}
			</tbody>
		</table>
	</div>
	
	<div class="contentNavigation">
		{@$pagesLinks}
		
		{hascontent}
			<nav>
				<ul>
					{content}
						{event name='contentNavigationButtonsBottom'}
					{/content}
				</ul>
			</nav>
		{/hascontent}
	</div>
{else}
	<p class="info">{lang}wcf.global.noItems{/lang}</p>
{/if}

{include file='footer'}

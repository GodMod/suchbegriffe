<?php
namespace wcf\acp\page;
use wcf\page\SortablePage;

/**
 * Shows a list of searched keywords
 * 
 * @author		GodMod
 * @copyright	2015 GodMod
 * @license		GNU Lesser General Public License <http://opensource.org/licenses/lgpl-license.php>
 * @package		com.woltlab.wcf
 * @subpackage	acp.page
 * @category	Community Framework
 */

class SearchKeywordsListPage extends SortablePage {
	/**
	 * @see	\wcf\page\AbstractPage::$activeMenuItem
	 */
	public $activeMenuItem = 'wcf.acp.menu.link.log.search.keywords';
	
	/**
	 * @see	\wcf\page\AbstractPage::$neededPermissions
	 */
	public $neededPermissions = array('admin.system.canViewLog');
	
	/**
	 * @see	\wcf\page\AbstractPage::$neededModules
	 */
	public $neededModules = array();
	
	/**
	 * @see	\wcf\page\SortablePage::$defaultSortField
	 */
	public $defaultSortField = 'lastSearchTime';
	
	/**
	 * @see	\wcf\page\SortablePage::$defaultSortOrder
	 */
	public $defaultSortOrder = 'DESC';
	
	/**
	 * @see	\wcf\page\SortablePage::$validSortFields
	 */
	public $validSortFields = array('keywordID', 'keyword', 'searches', 'lastSearchTime');
	
	/**
	 * @see	\wcf\page\MultipleLinkPage::$objectListClassName
	 */
	public $objectListClassName = 'wcf\data\search\keyword\SearchKeywordList';
}
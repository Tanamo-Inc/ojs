{**
 * submission/submissionMetadataFormFields.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Submission's metadata form fields. To be included in any form that wants to handle
 * submission metadata.
 *}
{capture assign="languagesField"}
	{capture assign="sectionDescription"}{if !$readOnly}submission.submit.metadataForm.tip{/if}{/capture}
	{fbvFormSection description=$sectionDescription title="common.languages"}
		{url|assign:languagesSourceUrl router=$smarty.const.ROUTE_PAGE page="submission" op="fetchChoices" list="languages"}
		{fbvElement type="keyword" id="languages" subLabelTranslate=true multilingual=true current=$languages source=$languagesSourceUrl disabled=$readOnly}
	{/fbvFormSection}
{/capture}
{include file="core:submission/submissionMetadataFormFields.tpl"}

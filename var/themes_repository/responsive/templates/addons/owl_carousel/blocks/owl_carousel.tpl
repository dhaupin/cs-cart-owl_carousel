{$obj_prefix = "`$block.block_id`000"}

{if $block.properties.outside_navigation == "Y"}
    <div class="owl-theme ty-owl-controls">
        <div class="owl-controls clickable owl-controls-outside" id="owl_outside_nav_{$block.block_id}">
            <div class="owl-buttons">
                <div id="owl_prev_{$obj_prefix}" class="owl-prev"><i class="ty-icon-left-open-thin"></i></div>
                <div id="owl_next_{$obj_prefix}" class="owl-next"><i class="ty-icon-right-open-thin"></i></div>
            </div>
        </div>
    </div>
{/if}

{if $items}
    <div id="scroll_list_{$block.block_id}" class="owl-carousel">
        {foreach from=$items item="banner" key="key"}

                {if $banner.type == "G" && $banner.main_pair.image_id}
                    {if $banner.url != ""}<a class="banner__link" href="{$banner.url|fn_url}" {if $banner.target == "B"}target="_blank"{/if}>{/if}
                        {include file="common/image.tpl" images=$banner.main_pair class="ty-banner__image" image_width=$block.properties.thumbnail_width image_height=$block.properties.thumbnail_width obj_id="scr_`$block.block_id`000`$banner.main_pair.image_id`"}
                    {if $banner.url != ""}</a>{/if}
                {else}
                    <div class="ty-wysiwyg-content">
                        {$banner.description nofilter}
                    </div>
                {/if}

        {/foreach}
    </div>
{/if}

{include file="common/scroller_init.tpl" items=$items prev_selector="#owl_prev_`$obj_prefix`" next_selector="#owl_next_`$obj_prefix`"}
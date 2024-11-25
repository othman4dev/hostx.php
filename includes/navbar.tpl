{foreach $navbar as $item}
<div menuItemName="{$item->getName()}" class="link d-block{if $item@first} no-collapse{/if}{if $item->hasChildren()} dropdown no-collapse{/if}{if $item->getClass()} {$item->getClass()}{/if}" id="{$item->getId()}">

    <a class="{if !isset($rightDrop) || !$rightDrop}{/if}{if $item->hasChildren()}dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#"{else}" href="{$item->getUri()}"{/if}{if $item->getAttribute('target')} target="{$item->getAttribute('target')}"{/if}>
        {if $item->hasIcon()}<i class="{$item->getIcon()}"></i>&nbsp;{/if}
        {$item->getLabel()}
        {if $item->hasBadge()}&nbsp;<span class="badge">{$item->getBadge()}</span>{/if}
    </a>

    {if $item->hasChildren()}

        <ul class="dropdown-menu{if isset($rightDrop) && $rightDrop} dropdown-menu-right{/if}">
        {foreach $item->getChildren() as $childItem}
            {if $childItem->getClass() && in_array($childItem->getClass(), ['dropdown-divider', 'nav-divider'])}
                <div class="dropdown-divider"></div>
            {else}
                <li menuItemName="{$childItem->getName()}" class="dropdown-item{if $childItem->getClass()} {$childItem->getClass()}{/if}" id="{$childItem->getId()}">
                    <a href="{$childItem->getUri()}" class="dm-link"{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if}>
                        {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                        {$childItem->getLabel()}
                        {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                    </a>
                </li>
            {/if}
        {/foreach}
        </ul>

    {/if}
</div>
{/foreach}
{if !isset($rightDrop) || !$rightDrop}
<li class="d-none dropdown collapsable-dropdown">
    <a class="dropdown-toggle" href="#" id="navbarDropdownMenu" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        {lang key='more'}
    </a>
    <ul class="collapsable-dropdown-menu dropdown-menu" aria-labelledby="navbarDropdownMenu">
    </ul>
</li>
{/if}

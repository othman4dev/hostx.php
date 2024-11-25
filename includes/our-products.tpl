<!-- :: PRODUCTS-GROUP-I :: -->
<div class="products-group-i bg-2 py-90">
  <div class="container">
    <!-- se-head -->
    <div class="se-head">
      <h3 class="se-title-1">{lang key="clientHomePanels.ourProducts"}</h3>
      <h4 class="se-title-2">{lang key="clientHomePanels.productsText1"}<br>{lang key="clientHomePanels.productsText2"} {lang key="clientHomePanels.productsText3"}</h4>
    </div>
    <!-- row -->
    <div class="row justify-content-center" data-gap-y="30px">
      {* assign value to change icons *}
      {assign var='counter' value=1}
      {* foreach *}
      {foreach $productGroups as $productGroup}
        <!-- col -->
        <div class="col-xl-3 col-lg-4 col-md-6">
          <!-- box -->
          <div class="box color-{if $counter == 1}1{elseif $counter == 2}2{elseif $counter == 3}3{elseif $counter == 4}4{/if}">
            <!-- link -->
            <a href="{$productGroup->getRoutePath()}" class="box-link"></a>
            <!-- icon -->
            <div class="icon">
              <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/icons/nums/{if $counter == 1}one{elseif $counter == 2}two{elseif $counter == 3}three{elseif $counter == 4}four{/if}.png" class="img-fluid" alt="businessman">
            </div>
            <!-- box-title -->
            <h4 class="box-title">{$productGroup->name}</h4>
            <!-- box-para -->
            <p class="box-para">{$productGroup->tagline}</p>
            <!-- arrow -->
            <div class="arrow text-right">
              <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/icons/right-arrow-w.png" class="img-fluid" alt="Right-Arrow">
            </div>
          </div>
        </div>
        {* assign to add one for each box value *}
        {assign var='counter' value=$counter+1}
      {/foreach}
    </div>
  </div>
</div>
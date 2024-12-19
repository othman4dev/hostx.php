{foreach $featuredTlds as $num => $tldinfo}
  {if $num < 5}
    <!-- col -->
    <div class="col-lg col-md-4 col-sm-6 mb-3">
    <!-- box -->
    <div class="box position-relative text-center">
      <!-- box-title -->
      <h3 class="box-title en-pri-font"><span>.</span>{$tldinfo.tldNoDots}</h3>
      <!-- price -->
      <div class="price mb-1">
        <p class="text">{lang key="startingat"}</p>
        {if is_object($tldinfo.register)}
          {if $tldinfo.register->toFull() == "USD"}
            <p class="text">$</p>
          {else}
            <p class="text">{$tldinfo.register->toFull()|replace:'USD':''}</p>
          {/if}
        {else}
          {lang key="domainregnotavailable"}
        {/if}
      </div>
      <a href="{$WEB_ROOT}/cart.php?a=add&domain=register" class="theme-btn --fill-primary --circle-btn --has-icon">
        <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/icons/right-arrow-w.png" class="dir-reflect img-fluid" alt="Arrow">
      </a>
    </div>
  </div>
  {/if}
{/foreach}
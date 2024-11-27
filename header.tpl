<!doctype html>
<html lang="en">

<head>
  <meta charset="{$charset}" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
  <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
  {include file="$template/includes/head.tpl"}
  {$headoutput}
</head>

<body class="primary-bg-color" data-phone-cc-input="{$phoneNumberInputStyle}">

  {$headeroutput}

  <header id="header" class="header">
    {if $loggedin}
      <div class="topbar">
        <div class="container-fluid">
          <div class="d-flex">
            <div class="mr-auto">
              <button type="button" class="btn" data-toggle="popover" id="accountNotifications" data-placement="bottom">
                <i class="far fa-flag"></i>
                {if count($clientAlerts) > 0}
                  {count($clientAlerts)}
                  <span class="d-none d-sm-inline">{lang key='notifications'}</span>
                {else}
                  <span class="d-sm-none">0</span>
                  <span class="d-none d-sm-inline">{lang key='nonotifications'}</span>
                {/if}
              </button>
              <div id="accountNotificationsContent" class="w-hidden">
                <ul class="client-alerts">
                  {foreach $clientAlerts as $alert}
                    <li>
                      <a href="{$alert->getLink()}">
                        <i class="fas fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                        <div class="message">{$alert->getMessage()}</div>
                      </a>
                    </li>
                  {foreachelse}
                    <li class="none">
                      {lang key='notificationsnone'}
                    </li>
                  {/foreach}
                </ul>
              </div>
            </div>

            <div class="ml-auto">
              <div class="input-group active-client" role="group">
                <div class="input-group-prepend d-none d-md-inline">
                  <span class="input-group-text">{lang key='loggedInAs'}:</span>
                </div>
                <div class="btn-group">
                  <a href="{$WEB_ROOT}/clientarea.php?action=details" class="btn btn-active-client">
                    <span>
                      {if $client.companyname}
                        {$client.companyname}
                      {else}
                        {$client.fullName}
                      {/if}
                    </span>
                  </a>
                  <a href="{routePath('user-accounts')}" class="btn" data-toggle="tooltip" data-placement="bottom" title="Switch Account">
                    <i class="fad fa-random"></i>
                  </a>
                  {if $adminMasqueradingAsClient || $adminLoggedIn}
                    <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-return-to-admin" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{lang key='adminmasqueradingasclient'} {lang key='logoutandreturntoadminarea'}{else}{lang key='adminloggedin'} {lang key='returntoadminarea'}{/if}">
                      <i class="fas fa-redo-alt"></i>
                      <span class="d-none d-md-inline-block">{lang key="admin.returnToAdmin"}</span>
                    </a>
                  {/if}
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    {/if}

    {if !$loggedin}
      <!-- :: NEWS-AREA :: -->
      <div class="news-area d-lg-block" id="news-area">
        <div class="container">
          <!-- row -->
          <div class="row align-items-center">
            <!-- col -->
            <div class="col-lg-6">
              <!-- news -->
              <div class="news new d-flex align-items-center">
                <!-- badge -->
                <div class="badge mr--sm-2">NEW</div>
                <!-- link -->
                <a href="#" class="link">An economical, 25 GB plan with free matching domain.</a>
              </div>
            </div>
            <!-- col -->
            <div class="col-lg-6 d-lg-block d-none">
              <!-- links -->
              <ul class="links list-unstyled d-flex align-items-center justify-content-end mb-0" data-gap-x="10px">
                <li class="item"><a href="#" target="_blank">Documentation</a></li>
                <li class="item"><a href="#" target="_blank">About us</a></li>
                <li class="item"><a href="#" target="_blank">Sitemap</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    {/if}

    <!-- :: THEME-NAVBAR :: -->
    <nav class="theme-navbar" id="theme-navbar">
      <div class="container">

        <!-- nav-top -->
        <div class="nav-top d-flex align-items-center">

          <!-- menu-icon -->
          <div class="menu-icon" id="open-links-btn">
            <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/icons/hamburger-light.png" class="menu-icon img-fluid" alt="x">
          </div>

          <!-- brand -->
          <a href="{$WEB_ROOT}" class="brand d-flex align-items-center">
            {if $assetLogoPath}
              <img src="{$assetLogoPath}" class="img-fluid" alt="{$companyname}">
            {else}
              {$companyname}
            {/if}
          </a>

          <!-- options -->
          <div class="options d-md-flex d-none align-items-center justify-content-end ml-auto">

            <!-- c-link -->
            <a href="{$WEB_ROOT}/cart.php?a=add&domain=register" class="c-link">
              <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/icons/globe.png" class="icon" alt="icon">
              <span class="text">{lang key="orderregisterdomain"}</span>
            </a>

            <!-- c-link -->
            <a href="{$WEB_ROOT}/cart.php?a=add&domain=transfer" class="c-link">
              <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/icons/domain.png" class="icon" alt="icon">
              <span class="text">{lang key="navtransferdomain"}</span>
            </a>

            <!-- buttons -->
            <div class="buttons d-flex align-items-center">
              {if !$loggedin}
                <a href="{$WEB_ROOT}/register.php" class="theme-btn --fill-primary --btn-size-md rounded text-uppercase mr--sm-2">{lang key="register"}</a>
                <a href="{$WEB_ROOT}/clientarea.php" class="theme-btn --outline-dark --btn-size-md rounded text-uppercase mr--sm-2">{lang key="login"}</a>
              {/if}
              <a href="{$WEB_ROOT}/cart.php?a=view" class="theme-btn --outline-dark --circle-btn --size-md --has-icon --has-counter" data-count="{$cartitemcount}">
                <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/icons/shopping-basket.png" class="img-fluid" alt="icon">
              </a>
            </div>

            <!-- lang -->
            {if $languagechangeenabled && count($locales) > 1 || $currencies}
              <div class="lang ml-3" id="lang">
                <!-- current -->
                <div class="current" type="button" data-toggle="modal" data-target="#modalChooseLanguage">
                  {$activeLocale.localisedName}
                  <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/icons/down-light.png" class="icon img-fluid ml--sm-1" alt="Icon">
                </div>
              </div>
            {/if}

          </div>

          <!-- second-options -->
          <div class="second-options d-md-none d-flex align-content-center justify-content-end ml-auto">
            <!-- o-link -->
            <a href="{$WEB_ROOT}/index.php?rp=/knowledgebase" class="o-link d-flex align-items-center justify-content-center">
              <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/icons/question-light.png" class="icon img-fluid" alt="Icon">
            </a>

            {if !$loggedin}
              <!-- o-link -->
              <div class="o-link user-link d-flex align-items-center justify-content-center ml-1" id="user-menu-btn">
                <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/icons/user-light.png" class="icon img-fluid" alt="Icon">
                <!-- user-dropdown-menu -->
                <ul class="user-dropdown-menu list-unstyled" id="user-dropdown-menu">
                  <!-- uddm-link-parent -->
                  <li class="uddm-link-parent">
                    <div class="title-2">{lang key="registeredUser"}</div>
                    <p class="para-2">{lang key="userHaveAccount"}.</p>
                    <a href="{$WEB_ROOT}/clientarea.php" class="uddm-link">{lang key="login"}</a>
                  </li>
                  <!-- uddm-link-parent -->
                  <li class="uddm-link-parent">
                    <div class="title-2">{lang key="newUser"}</div>
                    <p class="para-2">{lang key="userHaveNoAccount"}.</p>
                    <a href="{$WEB_ROOT}/register.php" class="uddm-link">{lang key="register"}</a>
                  </li>
                </ul>
              </div>
            {/if}

            <!-- o-link -->
            <a href="{$WEB_ROOT}/cart.php?a=view" class="o-link o-link-cart has-items d-flex align-items-center justify-content-center ml-1">
              <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/icons/basket-shopping-simple.png" class="icon img-fluid" alt="x">
            </a>
          </div>
        </div>

        <!-- nav-bottom -->
        <div class="nav-bottom d-flex align-items-center justify-content-between">
          <!-- info -->
          <div class="info d-flex align-items-center">
            <!-- item -->
            <a href="tel:0000" class="item">
              <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/icons/phone-call-light.png" class="img-fluid" alt="Icon">
              <span class="text">(20) 123 456 7890</span>
            </a>
          </div>
          <!-- links -->
          <div class="links d-xl-flex align-items-center ml-auto" id="theme-navbar-links">
            <!-- close-links-btn -->
            <div class="close-links-btn" id="close-links-btn">
              <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/icons/cross-light.png" class="img-fluid" alt="x">
            </div>
            {include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}
            {if $loggedin}
              {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar rightDrop=true}
            {/if}
          </div>
        </div>
      </div>
    </nav>
  </header>

  {include file="$template/includes/network-issues-notifications.tpl"}

  {if $templatefile !== 'homepage'}
    <nav class="master-breadcrumb" aria-label="breadcrumb">
      <div class="container">
        {include file="$template/includes/breadcrumb.tpl"}
      </div>
    </nav>
  {/if}

  {include file="$template/includes/validateuser.tpl"}
  {include file="$template/includes/verifyemail.tpl"}

  {if $templatefile == 'homepage'}
    {* header *}
    {include file="$template/includes/header-login-form.tpl"}
    {* homepage-features-section *}
    {include file="$template/includes/homepage-features-section.tpl"}
    {* operating-sys *}
    {include file="$template/includes/operating-sys-section.tpl"}
    {* custom-hosting-plans *}
    {include file="$template/includes/custom-hosting-plans.tpl"}
    {* our-products *}
    {if !empty($productGroups)}
      {include file="$template/includes/our-products.tpl"}
    {/if}
    {* domains-box *}
    {if $registerdomainenabled || $transferdomainenabled}
      {include file="$template/includes/domains-box.tpl"}
    {/if}
    {* quick-actions-1 *}
    {include file="$template/includes/quick-actions-1.tpl"}
    {* quick-actions-2 *}
    {include file="$template/includes/quick-actions-2.tpl"}

  {/if}

  <section id="main-body">
    <div class="{if !$skipMainBodyContainer}container{/if}">
      <div class="row">

        {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
          <div class="col-lg-4 col-xl-3">
            <div class="sidebar">
              {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
            </div>
            {if !$inShoppingCart && $secondarySidebar->hasChildren()}
              <div class="d-none d-lg-block sidebar">
                {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
              </div>
            {/if}
          </div>
        {/if}
<div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-lg-8 col-xl-9{else}col-12{/if} primary-content">
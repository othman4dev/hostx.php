<div class="max-w-7xl mx-auto py-12 px-4 sm:px-6 lg:px-8">
    <h2 class="text-3xl font-extrabold text-gray-900">FAQs</h2>
    <div class="mt-6 border-t border-gray-200 pt-6">
        <dl class="space-y-6 divide-y divide-gray-200">
            <div class="pt-6">
                <dt class="text-lg leading-6 font-medium text-gray-900">
                    What is the difference between VPS and RDP?
                </dt>
                <dd class="mt-2 text-base text-gray-500">
                    A VPS (Virtual Private Server) provides full control over the server, allowing you to install any software and configure the system as needed. RDP (Remote Desktop Protocol) is a Windows-based remote desktop service, ideal for accessing a pre-configured environment remotely.
                </dd>
            </div>
            <div class="pt-6">
                <dt class="text-lg leading-6 font-medium text-gray-900">
                    Can I get multiple IPv4 addresses with my VPS?
                </dt>
                <dd class="mt-2 text-base text-gray-500">
                    Yes, you can add multiple IPv4 addresses. Each additional IP is available for €2.50 per month.
                </dd>
            </div>
            <div class="pt-6">
                <dt class="text-lg leading-6 font-medium text-gray-900">
                    Is it possible to order a customized server with specific hardware?
                </dt>
                <dd class="mt-2 text-base text-gray-500">
                    Yes, we offer customized servers tailored to your specific hardware requirements. Please contact us to discuss your needs and receive a custom quote.
                </dd>
            </div>
            <div class="pt-6">
                <dt class="text-lg leading-6 font-medium text-gray-900">
                    Is my data truly anonymous with ClassRDP?
                </dt>
                <dd class="mt-2 text-base text-gray-500">
                    Absolutely. ClassRDP ensures full anonymity by not requiring any personal information during signup.
                </dd>
            </div>
            <div class="pt-6">
                <dt class="text-lg leading-6 font-medium text-gray-900">
                    How quickly will my VPS or RDP be set up?
                </dt>
                <dd class="mt-2 text-base text-gray-500">
                    Your service will be set up instantly after payment, allowing you to start using it within minutes.
                </dd>
            </div>
        </dl>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        const faqs = document.querySelectorAll('dt');
        faqs.forEach(faq => {
            faq.addEventListener('click', function() {
                this.nextElementSibling.classList.toggle('hidden');
            });
        });
    });
</script>

<style>
    dd {
        display: none;
    }
    dd.hidden {
        display: block;
    }
</style>
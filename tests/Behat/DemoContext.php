<?php

declare(strict_types=1);

/*
 * This file is part of the Symfony package.
 * (c) Fabien Potencier <fabien@symfony.com>
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace App\Tests\Behat;

use Behat\Mink\Session;
use Behat\MinkExtension\Context\MinkContext;

class DemoContext extends MinkContext
{
    /** @var Session */
    protected $session;

    public function __construct(Session $session)
    {
        $this->session = $session;
    }

    /**
     * @When I open the search page
     */
    public function openSearchPage(): void
    {
        $this->iAmOnHomepage();
        $this->clickLink('Zoek');
    }

    /**
     * @When I search for :term
     */
    public function searchForTerm(string $term): void
    {
        $this->session->getPage()->fillField('q', $term);
        sleep(1);
    }
}

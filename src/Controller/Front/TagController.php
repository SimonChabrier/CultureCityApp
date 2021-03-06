<?php

namespace App\Controller\Front;

use App\Entity\Tag;
use App\Repository\EventRepository;
use App\Repository\TagRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class TagController extends AbstractController
{
    /**
     * @Route("/tag/{slug}", name="show_tag", methods={"GET", "POST"})
     */
    public function showByName(Tag $tag): Response
    {
        // We get the tag by his slug and event sort by date with OrderBy annontation in Entity Tag
       
        return $this->render('front/main/tag.html.twig', compact('tag'));
    }
}

<?php

namespace App\Controller\Front;

use App\Repository\EventRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ShowController extends AbstractController
{
    /**
     * @Route("/show/{slug}", name="front_show")
     */
    public function index(EventRepository $eventRepository, string $slug): Response
    {
        $event = $eventRepository->findOneBy(["slug" => $slug]);
        if ($event)
        {
            return $this->render('front/show/index.html.twig', compact('event'));
        }
        return $this->render('front/show/error.html.twig', ["message" => "pas d'event"]);
    }
}

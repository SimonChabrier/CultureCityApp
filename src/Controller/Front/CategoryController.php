<?php

namespace App\Controller\Front;

use App\Entity\Category;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class CategoryController extends AbstractController
{
    /**
     * @Route("/category/{slug}", name="category", methods={"GET"})
     */
    public function showByName(Category $category): Response
    {
      
        return $this->render('front/category/index.html.twig', compact('category'));
    }
   
}
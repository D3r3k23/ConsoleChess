#include "Application.hpp"

#include <iostream>


Application::Application(void)
{
    std::cout << "App created." << std::endl;
}

Application::~Application(void)
{

}

void Application::run(void)
{
    std::cout << "App running..." << std::endl;
}

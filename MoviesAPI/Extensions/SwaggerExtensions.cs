﻿using System.Web.Http;
using Swashbuckle.Application;

namespace MoviesAPI.Extensions
{
    public static class SwaggerExtensions
    {
        public static HttpConfiguration EnableSwagger(this HttpConfiguration httpConfiguration)
        {
            httpConfiguration
                .EnableSwagger(c => c.SingleApiVersion("v1", "Book Store API"))
                .EnableSwaggerUi();
            return httpConfiguration;
        }
    }

}
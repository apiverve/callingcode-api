using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.CountryCallingCode
{
    /// <summary>
    /// Query options for the Country Calling Code API
    /// </summary>
    public class CountryCallingCodeQueryOptions
    {
        /// <summary>
        /// The 2 letter ISO code for the country (e.g. FR)
        /// </summary>
        [JsonProperty("country")]
        public string Country { get; set; }
    }
}

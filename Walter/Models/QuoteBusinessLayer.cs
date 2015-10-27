using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Walter.ViewModels;

namespace Walter.Models
{
    public class QuoteBusinessLayer
    {
        public VmQuote RandomQuote()
        {
            var temp = GetQuotes();

            var rnd = new Random(DateTime.Now.Millisecond);

            return temp[rnd.Next(0, temp.Count - 1)];
        }

        public List<VmQuote> GetQuotes()
        {
            var db = new WalterEntities();

            return db.Quotes.ToList().Select(q => new VmQuote
            {
                Id = q.Id,
                Quote = q.Quote1,
                Author =q.Author
            }).ToList();
        }
    }
}
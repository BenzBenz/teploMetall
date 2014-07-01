using System;
using System.Collections.Generic;
using System.Configuration;
using System.Diagnostics.CodeAnalysis;
using System.Globalization;
using System.IO.Compression;
using System.Net.Mail;
using System.Threading;
using System.Web;
using System.Web.Services;
using MailMessage = System.Net.Mail.MailMessage;

/// <summary>
/// Summary description for AjaxResult
/// </summary>
/// <summary>
	/// <para>Represent typical ajax webservice call result.</para>
	/// <para><b>Author:</b> Logutov Michael<br />
	/// <b>Creation date:</b> 14 november 2008</para>
	/// </summary>
	public class AjaxResult
	{
		public static AjaxResult WrongParametersOrHackAttempt = new AjaxResult (1, "Переданы неверные параметры или зарегистрирована попытка взлома. Повторите попытку позже");
		public static AjaxResult Success = new AjaxResult (0, null);
		public static AjaxResult Error = new AjaxResult (1, null);

    /// <summary>
    /// Result code.
    /// </summary>
    public int Code;

    /// <summary>
    /// Result data.
    /// </summary>
    public string Data;

		/// <summary>
		/// Default constructor.
		/// </summary>
		/// <param name="code"><see cref="Code"/>.</param>
		/// <param name="data"><see cref="Data"/>.</param>
		public AjaxResult (int code, string data)
		{
			this.Code = code;
			this.Data = data;
		}

        public AjaxResult()
        { }
	}

	

	/// <summary>
	/// <para>Base class for all webservices on the site.</para>
	/// <para><b>Author:</b> Logutov Michael<br />
	/// <b>Creation date:</b> 04 june 2009</para>
	/// </summary>
	public class BaseWebService : WebService
	{
		/// <summary>
		/// Handles start of webservice's call.
		/// </summary>
		protected void HandleCall ()
		{
			SetCompressFilter ();
		}

		/// <summary>
		/// Checks if current user is authenticated and throw an exception if not (exception will not be reported to administrator).
		/// </summary>
		protected void CheckAuthenticated ()
		{
			this.CheckAuthenticated ("Вы не авторизированны");
		}

		/// <summary>
		/// Checks if current user is authenticated and throw an exception if not (exception will not be reported to administrator).
		/// </summary>
		/// <param name="message">Exception message.</param>
		protected void CheckAuthenticated (string message)
		{
			if (!HttpContext.Current.User.Identity.IsAuthenticated)
				throw new InvalidOperationExceptionNoReport (message);
		}

		/// <summary>
		/// Handles webservice exception.
		/// </summary>
		/// <param name="ex">Exception instance.</param>
		/// <returns>Result of the operation.</returns>
		protected AjaxResult HandleException (Exception ex)
		{
		    throw new NotImplementedException();
		}

        [SuppressMessage("Microsoft.Globalization", "CA1309:UseOrdinalStringComparison", MessageId = "System.String.Compare(System.String,System.String,System.StringComparison)")]
        public static void SetCompressFilter()
        {

            throw new NotImplementedException();
        }

        public static void ReportError(Exception ex)
        {
            ReportError(ex, ConfigurationManager.AppSettings["ErrorEmail"]);
        }

        public static void ReportError(Exception ex, string email)
        {
            if (string.IsNullOrEmpty(email))
                return;

            try
            {
                MailMessage msg = new MailMessage();
                HttpContext context = HttpContext.Current;

                msg.To.Add(new MailAddress(email));
                msg.Subject = string.Format(CultureInfo.InvariantCulture, "[ERROR] site: {0}, url: {1}, message: {2}",
                    context.Request.Url.Host,
                    context.Request.Url.OriginalString,
                    ex.Message);

                

                msg.IsBodyHtml = true;
                msg.Body =
                    "<ul>" +
                        "<li>Url.OriginalString <a href='" + context.Request.Url.OriginalString + "'>" + context.Request.Url.OriginalString + "</a></li>" +
                        "<li>RawUrl: <a href='" + context.Request.RawUrl + "'>" + context.Request.RawUrl + "</a></li>" +
                        
                        "<li>User Host Address: " + context.Request.UserHostAddress + "</li>" +
                        "<li>User Agent: " + context.Request.UserAgent + "</li>" +
                        "<li>Browser: " + context.Request.Browser.Browser + " " + context.Request.Browser.Version + "</li>" +
                        "<li>Referrer: " + context.Request.UrlReferrer + "</li>" +
                    "</ul>" +
                    "<hr />" +
                    "<pre>" + ex + "</pre>";

                SmtpClient smtp = new SmtpClient();
                smtp.Send(msg);
            }
            catch
            {
            }
        }
	}

    public class InvalidOperationExceptionNoReport : InvalidOperationException
    {
        public InvalidOperationExceptionNoReport()
            : base()
        {
        }

        public InvalidOperationExceptionNoReport(string message)
            : base(message)
        {
        }
    }
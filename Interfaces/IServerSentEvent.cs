﻿using Campus.Core.EventsArgs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace Campus.Core.Interfaces
{
    public interface IServerSentEvent : ISubscriberEvent
    {                
        /// <summary>
        /// Sends a message to all subscribers.
        /// </summary>
        /// <param name="eventType">The type of message.</param>
        /// <param name="data">The data to send.</param>
        /// <param name="messageId">Id of the message.</param>
        void Send(string eventType = null, object data = null, string messageId = null);

        /// <summary>
        /// Sends a message to specified clients.
        /// </summary>
        /// <param name="eventType">The type of message.</param>
        /// <param name="data">The data to send.</param>
        /// <param name="messageId">Id of the message.</param>
        /// <param name="clientIds">Array of client id</param>
        void Send(string eventType = null, object data = null, string messageId = null, int[] clientIds = null);

        /// <summary>
        /// Invokes on heartbeat
        /// </summary> 
        event EventHandler<BeatEventArgs> OnHeartbeat;

        /// <summary>
        /// Invokes on message send
        /// </summary>
        event EventHandler<MessageEventArgs> OnMessageSend;
    }
}

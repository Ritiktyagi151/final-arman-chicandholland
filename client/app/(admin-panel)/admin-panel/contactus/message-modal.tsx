"use client";

import { useState, useEffect } from "react";

interface Contact {
  id: string;
  name: string;
  email: string;
  phoneNumber: string;
  subject: string;
  country: string;
  state: string;
  message: string;
  createdAt: string;
  isRead: boolean;
}

interface MessageModalProps {
  contact: Contact;
  children: React.ReactNode;
}

export function MessageModal({ contact, children }: MessageModalProps) {
  const [isOpen, setIsOpen] = useState(false);
  const [isCopied, setIsCopied] = useState(false);

  useEffect(() => {
    if (isOpen) {
      document.body.style.overflow = 'hidden';
    } else {
      document.body.style.overflow = 'unset';
    }
    
    return () => {
      document.body.style.overflow = 'unset';
    };
  }, [isOpen]);

  const formatDate = (dateString: string) => {
    const date = new Date(dateString);
    return date.toLocaleString('en-US', {
      weekday: 'long',
      year: 'numeric',
      month: 'long',
      day: 'numeric',
      hour: '2-digit',
      minute: '2-digit',
    });
  };

  const copyToClipboard = (text: string, type: string) => {
    navigator.clipboard.writeText(text).then(() => {
      setIsCopied(true);
      setTimeout(() => setIsCopied(false), 2000);
    });
  };

  return (
    <>
      {/* Trigger Button */}
      <div 
        onClick={() => setIsOpen(true)} 
        className={`cursor-pointer transition-all duration-300 hover:scale-105 ${
          !contact.isRead ? 'animate-pulse hover:animate-none' : ''
        }`}
      >
        {children}
      </div>

      {/* Modal */}
      {isOpen && (
        <div className="fixed inset-0 z-50 overflow-y-auto animate-fadeIn">
          {/* Backdrop */}
          <div 
            className="fixed inset-0 bg-black/80 backdrop-blur-xl transition-all duration-500"
            onClick={() => setIsOpen(false)}
          />

          {/* Modal Container */}
          <div className="flex min-h-full items-center justify-center p-4">
            <div className={`relative w-full max-w-2xl transform transition-all duration-500 ${
              isOpen ? 'scale-100 opacity-100' : 'scale-95 opacity-0'
            }`}>
              {/* Animated Border Glow */}
              <div className={`absolute inset-0 rounded-3xl p-[2px] ${
                !contact.isRead 
                  ? 'bg-gradient-to-r from-[#0066FF] via-[#4DA6FF] to-[#80BFFF] animate-gradient-x' 
                  : 'bg-gradient-to-r from-amber-400 via-rose-500 to-purple-600'
              }`}>
                <div className="absolute inset-0 bg-gradient-to-br from-slate-50 via-amber-50/30 to-rose-50/20 dark:from-slate-950 dark:via-amber-950/20 dark:to-rose-950/10 rounded-3xl"></div>
              </div>

              {/* Modal Content */}
              <div className={`relative backdrop-blur-xl rounded-3xl overflow-hidden border transition-all duration-500 ${
                !contact.isRead 
                  ? 'bg-gradient-to-br from-[#E6F7FF]/90 via-[#D1EEFF]/90 to-[#BDE5FF]/90 dark:from-[#0A2647]/95 dark:via-[#144272]/95 dark:to-[#205295]/95 border-[#0066FF]/20 dark:border-[#4DA6FF]/20 shadow-[0_25px_50px_-12px_rgba(0,102,255,0.3)]' 
                  : 'bg-white/90 dark:bg-slate-900/90 border-slate-200/50 dark:border-slate-700/50'
              }`}>
                {/* Animated Header Background */}
                <div className={`absolute top-0 left-0 right-0 h-32 ${
                  !contact.isRead 
                    ? 'bg-gradient-to-r from-[#0066FF]/20 via-[#4DA6FF]/15 to-[#80BFFF]/10' 
                    : 'bg-gradient-to-r from-amber-400/10 via-rose-500/10 to-purple-600/10'
                }`}></div>

                {/* Close Button */}
                <button
                  onClick={() => setIsOpen(false)}
                  className={`absolute top-4 right-4 z-10 w-10 h-10 rounded-full flex items-center justify-center transition-all duration-300 ${
                    !contact.isRead 
                      ? 'bg-gradient-to-r from-[#0066FF]/20 to-[#4DA6FF]/20 text-[#0066FF] hover:bg-gradient-to-r hover:from-[#0066FF]/30 hover:to-[#4DA6FF]/30 hover:text-white hover:scale-110 hover:shadow-[0_0_20px_rgba(0,102,255,0.5)]' 
                      : 'bg-slate-100/50 dark:bg-slate-800/50 text-slate-500 dark:text-slate-400 hover:text-rose-500 dark:hover:text-rose-400 hover:bg-slate-200/50 dark:hover:bg-slate-700/50 hover:scale-110'
                  } backdrop-blur-sm border ${
                    !contact.isRead 
                      ? 'border-[#4DA6FF]/30' 
                      : 'border-slate-300/50 dark:border-slate-600/50'
                  }`}
                >
                  <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M6 18L18 6M6 6l12 12" />
                  </svg>
                </button>

                {/* Content Container */}
                <div className="relative p-6 md:p-8">
                  {/* Header */}
                  <div className="mb-8">
                    <div className="flex items-center space-x-4 mb-6">
                      {/* Enhanced Avatar with Glow */}
                      <div className="relative">
                        <div className={`absolute inset-0 rounded-2xl blur-lg opacity-70 transition-all duration-500 ${
                          !contact.isRead 
                            ? 'bg-gradient-to-br from-[#4DA6FF] to-[#0066FF] animate-pulse' 
                            : 'bg-gradient-to-br from-amber-400 to-rose-500'
                        }`}></div>
                        <div className={`relative w-16 h-16 rounded-2xl flex items-center justify-center shadow-2xl border backdrop-blur-sm ${
                          !contact.isRead 
                            ? 'bg-gradient-to-r from-[#0066FF] via-[#4DA6FF] to-[#80BFFF] border-[#0066FF]/60' 
                            : 'bg-gradient-to-r from-black via-gray-900 to-yellow-600 border-yellow-500/30'
                        }`}>
                          <span className={`text-2xl font-bold tracking-wide ${
                            !contact.isRead ? 'text-white' : 'text-white'
                          }`}>
                            {contact.name.charAt(0).toUpperCase()}
                          </span>
                        </div>
                        
                        {/* Unread Indicator */}
                        {!contact.isRead && (
                          <div className="absolute -top-2 -right-2 w-6 h-6 bg-gradient-to-r from-red-500 to-pink-600 rounded-full border-2 border-white shadow-xl animate-ping flex items-center justify-center">
                            <div className="w-2 h-2 bg-white rounded-full"></div>
                          </div>
                        )}
                      </div>
                      
                      {/* Contact Info */}
                      <div className="flex-1">
                        <h2 className={`text-2xl font-bold font-serif transition-colors duration-300 ${
                          !contact.isRead 
                            ? 'text-[#0066CC] dark:text-[#80BFFF]' 
                            : 'text-slate-800 dark:text-white'
                        }`}>
                          {contact.name}
                          {!contact.isRead && (
                            <span className="ml-3 inline-flex items-center">
                              <span className="w-2 h-2 bg-gradient-to-r from-red-500 to-pink-600 rounded-full animate-pulse"></span>
                              <span className="ml-2 text-sm font-normal">Unread</span>
                            </span>
                          )}
                        </h2>
                        <div className="flex items-center flex-wrap gap-2 mt-2">
                          <p className={`text-sm font-medium transition-colors duration-300 ${
                            !contact.isRead 
                              ? 'text-[#3399FF] dark:text-[#4DA6FF]' 
                              : 'text-slate-600 dark:text-slate-400'
                          }`}>
                            {contact.email}
                          </p>
                          <button
                            onClick={() => copyToClipboard(contact.email, 'email')}
                            className="text-xs px-2 py-1 rounded-lg bg-slate-100/50 dark:bg-slate-800/50 text-slate-600 dark:text-slate-400 hover:text-[#0066FF] dark:hover:text-[#80BFFF] transition-all duration-300"
                          >
                            📋 Copy
                          </button>
                        </div>
                      </div>
                    </div>

                    {/* Date & Status Row */}
                    <div className="flex items-center justify-between">
                      <div className="flex items-center space-x-2">
                        <span className="text-slate-500 dark:text-slate-400">📅</span>
                        <p className={`text-sm font-medium transition-colors duration-300 ${
                          !contact.isRead 
                            ? 'text-[#3399FF] dark:text-[#4DA6FF]' 
                            : 'text-slate-500 dark:text-slate-400'
                        }`}>
                          {formatDate(contact.createdAt)}
                        </p>
                      </div>
                      <div className="flex items-center space-x-2">
                        <span className={`px-4 py-1.5 rounded-full text-sm font-medium backdrop-blur-sm border transition-all duration-300 ${
                          !contact.isRead 
                            ? 'bg-gradient-to-r from-red-500/20 to-pink-600/20 dark:from-red-900/40 dark:to-pink-900/40 text-red-700 dark:text-red-300 border-red-300/50 dark:border-red-700/50 animate-pulse' 
                            : 'bg-gradient-to-r from-emerald-500/20 to-teal-600/20 dark:from-emerald-900/40 dark:to-teal-900/40 text-emerald-700 dark:text-emerald-300 border-emerald-300/50 dark:border-emerald-700/50'
                        }`}>
                          {!contact.isRead ? '🆕 New Message' : '✓ Read'}
                        </span>
                      </div>
                    </div>
                  </div>

                  {/* Divider */}
                  <div className={`h-px mb-8 ${
                    !contact.isRead 
                      ? 'bg-gradient-to-r from-transparent via-[#4DA6FF]/30 to-transparent' 
                      : 'bg-gradient-to-r from-transparent via-slate-300/50 dark:via-slate-600/50 to-transparent'
                  }`}></div>

                  {/* Message Details */}
                  <div className="space-y-8">
                    {/* Subject */}
                    <div>
                      <h3 className={`text-lg font-semibold mb-3 font-serif flex items-center gap-2 transition-colors duration-300 ${
                        !contact.isRead 
                          ? 'text-[#0066CC] dark:text-[#80BFFF]' 
                          : 'text-slate-700 dark:text-slate-300'
                      }`}>
                        <span>📌</span>
                        Subject
                      </h3>
                      <div className={`p-4 rounded-xl border backdrop-blur-sm transition-all duration-300 ${
                        !contact.isRead 
                          ? 'bg-gradient-to-r from-[#E6F7FF]/50 to-[#D1EEFF]/50 dark:from-[#144272]/30 dark:to-[#205295]/30 border-[#4DA6FF]/30' 
                          : 'bg-slate-100/50 dark:bg-slate-800/50 border-slate-200/50 dark:border-slate-700/50'
                      }`}>
                        <p className={`font-medium transition-colors duration-300 ${
                          !contact.isRead 
                            ? 'text-[#0066CC] dark:text-[#80BFFF]' 
                            : 'text-slate-800 dark:text-slate-200'
                        }`}>
                          {contact.subject}
                        </p>
                      </div>
                    </div>

                    {/* Contact Info Grid */}
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                      {/* Phone Number */}
                      <div>
                        <h3 className={`text-sm font-semibold mb-2 flex items-center gap-2 transition-colors duration-300 ${
                          !contact.isRead 
                            ? 'text-[#3399FF] dark:text-[#4DA6FF]' 
                            : 'text-slate-600 dark:text-slate-400'
                        }`}>
                          <span>📱</span>
                          Phone Number
                        </h3>
                        <div className={`p-3 rounded-xl border backdrop-blur-sm transition-all duration-300 flex items-center justify-between ${
                          !contact.isRead 
                            ? 'bg-gradient-to-r from-[#E6F7FF]/50 to-[#D1EEFF]/50 dark:from-[#144272]/30 dark:to-[#205295]/30 border-[#4DA6FF]/30' 
                            : 'bg-slate-100/50 dark:bg-slate-800/50 border-slate-200/50 dark:border-slate-700/50'
                        }`}>
                          <p className={`font-medium transition-colors duration-300 ${
                            !contact.isRead 
                              ? 'text-[#0066CC] dark:text-[#80BFFF]' 
                              : 'text-slate-800 dark:text-slate-200'
                          }`}>
                            {contact.phoneNumber || "Not provided"}
                          </p>
                          {contact.phoneNumber && (
                            <button
                              onClick={() => copyToClipboard(contact.phoneNumber, 'phone')}
                              className="text-xs px-2 py-1 rounded-lg bg-slate-200/30 dark:bg-slate-700/30 hover:bg-[#0066FF]/20 dark:hover:bg-[#4DA6FF]/20 transition-all duration-300"
                            >
                              Copy
                            </button>
                          )}
                        </div>
                      </div>

                      {/* Location */}
                      <div>
                        <h3 className={`text-sm font-semibold mb-2 flex items-center gap-2 transition-colors duration-300 ${
                          !contact.isRead 
                            ? 'text-[#3399FF] dark:text-[#4DA6FF]' 
                            : 'text-slate-600 dark:text-slate-400'
                        }`}>
                          <span>📍</span>
                          Location
                        </h3>
                        <div className="flex flex-wrap gap-2">
                          {contact.country && (
                            <span className={`px-3 py-1.5 text-sm rounded-full font-medium capitalize border transition-all duration-300 ${
                              !contact.isRead 
                                ? 'bg-gradient-to-r from-[#D1EEFF] to-[#E6F7FF] dark:from-[#144272] dark:to-[#205295] text-[#0066CC] dark:text-[#80BFFF] border-[#4DA6FF]/50 dark:border-[#4DA6FF]/30 hover:scale-105 hover:shadow-[0_0_15px_rgba(0,102,255,0.2)]' 
                                : 'bg-gradient-to-r from-slate-100 to-slate-200 dark:from-slate-700 dark:to-slate-600 text-slate-700 dark:text-slate-200 border-slate-300/50 dark:border-slate-600/50'
                            }`}>
                              {contact.country}
                            </span>
                          )}
                          {contact.state && (
                            <span className={`px-3 py-1.5 text-sm rounded-full font-medium capitalize border transition-all duration-300 ${
                              !contact.isRead 
                                ? 'bg-gradient-to-r from-[#B3D9FF] to-[#C2E3FF] dark:from-[#1E3A8A] dark:to-[#1E40AF] text-[#0066CC] dark:text-[#80BFFF] border-[#3399FF]/50 dark:border-[#3399FF]/30 hover:scale-105 hover:shadow-[0_0_15px_rgba(51,153,255,0.2)]' 
                                : 'bg-gradient-to-r from-amber-100 to-amber-200 dark:from-amber-900/30 dark:to-amber-800/30 text-amber-700 dark:text-amber-300 border-amber-300/50 dark:border-amber-600/50'
                            }`}>
                              {contact.state}
                            </span>
                          )}
                          {!contact.country && !contact.state && (
                            <span className="text-slate-400 dark:text-slate-500 italic text-sm">
                              Location not provided
                            </span>
                          )}
                        </div>
                      </div>
                    </div>

                    {/* Message */}
                    <div>
                      <h3 className={`text-lg font-semibold mb-3 font-serif flex items-center gap-2 transition-colors duration-300 ${
                        !contact.isRead 
                          ? 'text-[#0066CC] dark:text-[#80BFFF]' 
                          : 'text-slate-700 dark:text-slate-300'
                      }`}>
                        <span>💬</span>
                        Message
                      </h3>
                      <div className={`p-4 rounded-xl border backdrop-blur-sm transition-all duration-300 max-h-96 overflow-y-auto ${
                        !contact.isRead 
                          ? 'bg-gradient-to-r from-[#E6F7FF]/50 to-[#D1EEFF]/50 dark:from-[#144272]/30 dark:to-[#205295]/30 border-[#4DA6FF]/30' 
                          : 'bg-slate-100/50 dark:bg-slate-800/50 border-slate-200/50 dark:border-slate-700/50'
                      }`}>
                        <p className={`whitespace-pre-wrap leading-relaxed transition-colors duration-300 ${
                          !contact.isRead 
                            ? 'text-[#0066CC] dark:text-[#80BFFF]' 
                            : 'text-slate-800 dark:text-slate-200'
                        }`}>
                          {contact.message}
                        </p>
                      </div>
                    </div>
                  </div>

                  {/* Footer */}
                  <div className="mt-8 pt-6 border-t border-slate-200/50 dark:border-slate-700/50">
                    <div className="flex flex-col sm:flex-row justify-between items-center gap-4">
                      {/* Copy Success Message */}
                      {isCopied && (
                        <div className="px-4 py-2 bg-gradient-to-r from-emerald-500 to-teal-600 text-white rounded-lg text-sm animate-fadeIn">
                          ✓ Copied to clipboard!
                        </div>
                      )}
                      
                      {/* Action Buttons */}
                      <div className="flex flex-wrap gap-3 ml-auto">
                        <button
                          onClick={() => setIsOpen(false)}
                          className={`px-6 py-3 rounded-xl font-medium transition-all duration-300 border ${
                            !contact.isRead 
                              ? 'bg-gradient-to-r from-[#0066FF]/10 to-[#4DA6FF]/10 text-[#0066CC] dark:text-[#80BFFF] border-[#4DA6FF]/30 hover:bg-gradient-to-r hover:from-[#0066FF]/20 hover:to-[#4DA6FF]/20 hover:scale-105' 
                              : 'text-slate-700 dark:text-slate-300 bg-slate-100/50 dark:bg-slate-800/50 hover:bg-slate-200/50 dark:hover:bg-slate-700/50 border-slate-300/50 dark:border-slate-600/50'
                          }`}
                        >
                          Close
                        </button>
                        <a
                          href={`mailto:${contact.email}?subject=Re: ${contact.subject}`}
                          className={`px-6 py-3 rounded-xl font-medium transition-all duration-300 ${
                            !contact.isRead 
                              ? 'bg-gradient-to-r from-[#0066FF] to-[#4DA6FF] text-white hover:shadow-[0_10px_30px_-5px_rgba(0,102,255,0.5)] hover:scale-105' 
                              : 'bg-gradient-to-r from-amber-400 to-amber-500 text-white hover:shadow-lg hover:scale-105'
                          }`}
                        >
                          ✉️ Reply via Email
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      )}
    </>
  );
}
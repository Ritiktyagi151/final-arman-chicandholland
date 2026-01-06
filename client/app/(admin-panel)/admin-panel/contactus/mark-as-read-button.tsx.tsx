// app/(admin)/admin/contact-us/mark-as-read-button.tsx
"use client";

import { useState } from "react";
import { API_URL } from "../../../../lib/constants";

export function MarkAsReadButton({ contactId }: { contactId: string }) {
  const [isLoading, setIsLoading] = useState(false);
  const [isMarked, setIsMarked] = useState(false);

  const handleMarkAsRead = async () => {
    setIsLoading(true);
    try {
      const token = document.cookie
        .split('; ')
        .find(row => row.startsWith('token='))
        ?.split('=')[1] || '';

      const response = await fetch(`${API_URL}/contactus/${contactId}/read`, {
        method: 'PATCH',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${token}`,
        },
      });

      if (response.ok) {
        setIsMarked(true);
        // Refresh the page to update the status
        setTimeout(() => window.location.reload(), 1000);
      }
    } catch (error) {
      console.error('Error marking as read:', error);
    } finally {
      setIsLoading(false);
    }
  };

  if (isMarked) {
    return (
      <span className="px-2.5 py-1 bg-gradient-to-r from-emerald-100 to-teal-200 dark:from-emerald-900/40 dark:to-teal-900/40 text-emerald-700 dark:text-emerald-300 text-xs rounded-full font-medium border border-emerald-300/50 dark:border-emerald-700/50">
        Marked ✓
      </span>
    );
  }

  return (
    <button
      onClick={handleMarkAsRead}
      disabled={isLoading}
      className={`px-2.5 py-1 text-xs rounded-full font-medium border transition-all duration-300 ${
        isLoading
          ? 'bg-gradient-to-r from-slate-100 to-slate-200 dark:from-slate-700 dark:to-slate-600 text-slate-500 dark:text-slate-400 border-slate-300/50 dark:border-slate-600/50 cursor-not-allowed'
          : 'bg-gradient-to-r from-amber-100 to-amber-200 dark:from-amber-900/40 dark:to-amber-800/40 text-amber-700 dark:text-amber-300 border-amber-300/50 dark:border-amber-600/50 hover:scale-105 hover:shadow-md'
      }`}
    >
      {isLoading ? 'Processing...' : 'Mark as Read'}
    </button>
  );
}
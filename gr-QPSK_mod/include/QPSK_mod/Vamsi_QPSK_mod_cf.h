/* -*- c++ -*- */
/* 
 * Copyright 2015 <+YOU OR YOUR COMPANY+>.
 * 
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */


#ifndef INCLUDED_QPSK_MOD_VAMSI_QPSK_MOD_CF_H
#define INCLUDED_QPSK_MOD_VAMSI_QPSK_MOD_CF_H

#include <QPSK_mod/api.h>
#include <gnuradio/block.h>

namespace gr {
  namespace QPSK_mod {

    /*!
     * \brief <+description of block+>
     * \ingroup QPSK_mod
     *
     */
    class QPSK_MOD_API Vamsi_QPSK_mod_cf : virtual public gr::block
    {
     public:
      typedef boost::shared_ptr<Vamsi_QPSK_mod_cf> sptr;

      /*!
       * \brief Return a shared_ptr to a new instance of QPSK_mod::Vamsi_QPSK_mod_cf.
       *
       * To avoid accidental use of raw pointers, QPSK_mod::Vamsi_QPSK_mod_cf's
       * constructor is in a private implementation
       * class. QPSK_mod::Vamsi_QPSK_mod_cf::make is the public interface for
       * creating new instances.
       */
      static sptr make(int Inputlen);
    };

  } // namespace QPSK_mod
} // namespace gr

#endif /* INCLUDED_QPSK_MOD_VAMSI_QPSK_MOD_CF_H */


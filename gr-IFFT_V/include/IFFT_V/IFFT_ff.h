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


#ifndef INCLUDED_IFFT_V_IFFT_FF_H
#define INCLUDED_IFFT_V_IFFT_FF_H

#include <IFFT_V/api.h>
#include <gnuradio/block.h>

namespace gr {
  namespace IFFT_V {

    /*!
     * \brief <+description of block+>
     * \ingroup IFFT_V
     *
     */
    class IFFT_V_API IFFT_ff : virtual public gr::block
    {
     public:
      typedef boost::shared_ptr<IFFT_ff> sptr;

      /*!
       * \brief Return a shared_ptr to a new instance of IFFT_V::IFFT_ff.
       *
       * To avoid accidental use of raw pointers, IFFT_V::IFFT_ff's
       * constructor is in a private implementation
       * class. IFFT_V::IFFT_ff::make is the public interface for
       * creating new instances.
       */
      static sptr make(int IFFTSize);
    };

  } // namespace IFFT_V
} // namespace gr

#endif /* INCLUDED_IFFT_V_IFFT_FF_H */


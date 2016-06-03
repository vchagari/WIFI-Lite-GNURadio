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


#ifndef INCLUDED_OFDM_CYCLIC_PREFIX_VAMSI_OFDMCP_FF_H
#define INCLUDED_OFDM_CYCLIC_PREFIX_VAMSI_OFDMCP_FF_H

#include <OFDM_Cyclic_Prefix/api.h>
#include <gnuradio/block.h>

namespace gr {
  namespace OFDM_Cyclic_Prefix {

    /*!
     * \brief <+description of block+>
     * \ingroup OFDM_Cyclic_Prefix
     *
     */
    class OFDM_CYCLIC_PREFIX_API vamsi_OFDMCP_ff : virtual public gr::block
    {
     public:
      typedef boost::shared_ptr<vamsi_OFDMCP_ff> sptr;

      /*!
       * \brief Return a shared_ptr to a new instance of OFDM_Cyclic_Prefix::vamsi_OFDMCP_ff.
       *
       * To avoid accidental use of raw pointers, OFDM_Cyclic_Prefix::vamsi_OFDMCP_ff's
       * constructor is in a private implementation
       * class. OFDM_Cyclic_Prefix::vamsi_OFDMCP_ff::make is the public interface for
       * creating new instances.
       */
      static sptr make(int InputLen, int CPLen);
    };

  } // namespace OFDM_Cyclic_Prefix
} // namespace gr

#endif /* INCLUDED_OFDM_CYCLIC_PREFIX_VAMSI_OFDMCP_FF_H */


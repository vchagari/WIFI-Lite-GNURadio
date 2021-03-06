# This file was automatically generated by SWIG (http://www.swig.org).
# Version 2.0.11
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.





from sys import version_info
if version_info >= (2,6,0):
    def swig_import_helper():
        from os.path import dirname
        import imp
        fp = None
        try:
            fp, pathname, description = imp.find_module('_QPSK_mod_swig', [dirname(__file__)])
        except ImportError:
            import _QPSK_mod_swig
            return _QPSK_mod_swig
        if fp is not None:
            try:
                _mod = imp.load_module('_QPSK_mod_swig', fp, pathname, description)
            finally:
                fp.close()
            return _mod
    _QPSK_mod_swig = swig_import_helper()
    del swig_import_helper
else:
    import _QPSK_mod_swig
del version_info
try:
    _swig_property = property
except NameError:
    pass # Python < 2.2 doesn't have 'property'.
def _swig_setattr_nondynamic(self,class_type,name,value,static=1):
    if (name == "thisown"): return self.this.own(value)
    if (name == "this"):
        if type(value).__name__ == 'SwigPyObject':
            self.__dict__[name] = value
            return
    method = class_type.__swig_setmethods__.get(name,None)
    if method: return method(self,value)
    if (not static):
        self.__dict__[name] = value
    else:
        raise AttributeError("You cannot add attributes to %s" % self)

def _swig_setattr(self,class_type,name,value):
    return _swig_setattr_nondynamic(self,class_type,name,value,0)

def _swig_getattr(self,class_type,name):
    if (name == "thisown"): return self.this.own()
    method = class_type.__swig_getmethods__.get(name,None)
    if method: return method(self)
    raise AttributeError(name)

def _swig_repr(self):
    try: strthis = "proxy of " + self.this.__repr__()
    except: strthis = ""
    return "<%s.%s; %s >" % (self.__class__.__module__, self.__class__.__name__, strthis,)

try:
    _object = object
    _newclass = 1
except AttributeError:
    class _object : pass
    _newclass = 0


def _swig_setattr_nondynamic_method(set):
    def set_attr(self,name,value):
        if (name == "thisown"): return self.this.own(value)
        if hasattr(self,name) or (name == "this"):
            set(self,name,value)
        else:
            raise AttributeError("You cannot add attributes to %s" % self)
    return set_attr



def high_res_timer_now():
  """high_res_timer_now() -> gr::high_res_timer_type"""
  return _QPSK_mod_swig.high_res_timer_now()

def high_res_timer_now_perfmon():
  """high_res_timer_now_perfmon() -> gr::high_res_timer_type"""
  return _QPSK_mod_swig.high_res_timer_now_perfmon()

def high_res_timer_tps():
  """high_res_timer_tps() -> gr::high_res_timer_type"""
  return _QPSK_mod_swig.high_res_timer_tps()

def high_res_timer_epoch():
  """high_res_timer_epoch() -> gr::high_res_timer_type"""
  return _QPSK_mod_swig.high_res_timer_epoch()
class Vamsi_QPSK_mod_cf(object):
    """<+description of block+>"""
    thisown = _swig_property(lambda x: x.this.own(), lambda x, v: x.this.own(v), doc='The membership flag')
    def __init__(self, *args, **kwargs): raise AttributeError("No constructor defined")
    __repr__ = _swig_repr
    def make(*args, **kwargs):
        """
        make(int Inputlen) -> Vamsi_QPSK_mod_cf_sptr

        Return a shared_ptr to a new instance of QPSK_mod::Vamsi_QPSK_mod_cf.

        To avoid accidental use of raw pointers, QPSK_mod::Vamsi_QPSK_mod_cf's constructor is in a private implementation class. QPSK_mod::Vamsi_QPSK_mod_cf::make is the public interface for creating new instances.

        Params: (Inputlen)
        """
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_make(*args, **kwargs)

    make = staticmethod(make)
    __swig_destroy__ = _QPSK_mod_swig.delete_Vamsi_QPSK_mod_cf
    __del__ = lambda self : None;
Vamsi_QPSK_mod_cf_swigregister = _QPSK_mod_swig.Vamsi_QPSK_mod_cf_swigregister
Vamsi_QPSK_mod_cf_swigregister(Vamsi_QPSK_mod_cf)

def Vamsi_QPSK_mod_cf_make(*args, **kwargs):
  """
    Vamsi_QPSK_mod_cf_make(int Inputlen) -> Vamsi_QPSK_mod_cf_sptr

    Return a shared_ptr to a new instance of QPSK_mod::Vamsi_QPSK_mod_cf.

    To avoid accidental use of raw pointers, QPSK_mod::Vamsi_QPSK_mod_cf's constructor is in a private implementation class. QPSK_mod::Vamsi_QPSK_mod_cf::make is the public interface for creating new instances.

    Params: (Inputlen)
    """
  return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_make(*args, **kwargs)

class Vamsi_QPSK_mod_cf_sptr(object):
    """Proxy of C++ boost::shared_ptr<(gr::QPSK_mod::Vamsi_QPSK_mod_cf)> class"""
    thisown = _swig_property(lambda x: x.this.own(), lambda x, v: x.this.own(v), doc='The membership flag')
    __repr__ = _swig_repr
    def __init__(self, *args): 
        """
        __init__(boost::shared_ptr<(gr::QPSK_mod::Vamsi_QPSK_mod_cf)> self) -> Vamsi_QPSK_mod_cf_sptr
        __init__(boost::shared_ptr<(gr::QPSK_mod::Vamsi_QPSK_mod_cf)> self, Vamsi_QPSK_mod_cf p) -> Vamsi_QPSK_mod_cf_sptr
        """
        this = _QPSK_mod_swig.new_Vamsi_QPSK_mod_cf_sptr(*args)
        try: self.this.append(this)
        except: self.this = this
    def __deref__(self):
        """__deref__(Vamsi_QPSK_mod_cf_sptr self) -> Vamsi_QPSK_mod_cf"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr___deref__(self)

    __swig_destroy__ = _QPSK_mod_swig.delete_Vamsi_QPSK_mod_cf_sptr
    __del__ = lambda self : None;
    def make(self, *args, **kwargs):
        """
        make(Vamsi_QPSK_mod_cf_sptr self, int Inputlen) -> Vamsi_QPSK_mod_cf_sptr

        Return a shared_ptr to a new instance of QPSK_mod::Vamsi_QPSK_mod_cf.

        To avoid accidental use of raw pointers, QPSK_mod::Vamsi_QPSK_mod_cf's constructor is in a private implementation class. QPSK_mod::Vamsi_QPSK_mod_cf::make is the public interface for creating new instances.

        Params: (Inputlen)
        """
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_make(self, *args, **kwargs)

    def history(self):
        """history(Vamsi_QPSK_mod_cf_sptr self) -> unsigned int"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_history(self)

    def declare_sample_delay(self, *args):
        """
        declare_sample_delay(Vamsi_QPSK_mod_cf_sptr self, int which, int delay)
        declare_sample_delay(Vamsi_QPSK_mod_cf_sptr self, unsigned int delay)
        """
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_declare_sample_delay(self, *args)

    def sample_delay(self, *args, **kwargs):
        """sample_delay(Vamsi_QPSK_mod_cf_sptr self, int which) -> unsigned int"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_sample_delay(self, *args, **kwargs)

    def output_multiple(self):
        """output_multiple(Vamsi_QPSK_mod_cf_sptr self) -> int"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_output_multiple(self)

    def relative_rate(self):
        """relative_rate(Vamsi_QPSK_mod_cf_sptr self) -> double"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_relative_rate(self)

    def start(self):
        """start(Vamsi_QPSK_mod_cf_sptr self) -> bool"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_start(self)

    def stop(self):
        """stop(Vamsi_QPSK_mod_cf_sptr self) -> bool"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_stop(self)

    def nitems_read(self, *args, **kwargs):
        """nitems_read(Vamsi_QPSK_mod_cf_sptr self, unsigned int which_input) -> uint64_t"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_nitems_read(self, *args, **kwargs)

    def nitems_written(self, *args, **kwargs):
        """nitems_written(Vamsi_QPSK_mod_cf_sptr self, unsigned int which_output) -> uint64_t"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_nitems_written(self, *args, **kwargs)

    def max_noutput_items(self):
        """max_noutput_items(Vamsi_QPSK_mod_cf_sptr self) -> int"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_max_noutput_items(self)

    def set_max_noutput_items(self, *args, **kwargs):
        """set_max_noutput_items(Vamsi_QPSK_mod_cf_sptr self, int m)"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_set_max_noutput_items(self, *args, **kwargs)

    def unset_max_noutput_items(self):
        """unset_max_noutput_items(Vamsi_QPSK_mod_cf_sptr self)"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_unset_max_noutput_items(self)

    def is_set_max_noutput_items(self):
        """is_set_max_noutput_items(Vamsi_QPSK_mod_cf_sptr self) -> bool"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_is_set_max_noutput_items(self)

    def set_min_noutput_items(self, *args, **kwargs):
        """set_min_noutput_items(Vamsi_QPSK_mod_cf_sptr self, int m)"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_set_min_noutput_items(self, *args, **kwargs)

    def min_noutput_items(self):
        """min_noutput_items(Vamsi_QPSK_mod_cf_sptr self) -> int"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_min_noutput_items(self)

    def max_output_buffer(self, *args, **kwargs):
        """max_output_buffer(Vamsi_QPSK_mod_cf_sptr self, int i) -> long"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_max_output_buffer(self, *args, **kwargs)

    def set_max_output_buffer(self, *args):
        """
        set_max_output_buffer(Vamsi_QPSK_mod_cf_sptr self, long max_output_buffer)
        set_max_output_buffer(Vamsi_QPSK_mod_cf_sptr self, int port, long max_output_buffer)
        """
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_set_max_output_buffer(self, *args)

    def min_output_buffer(self, *args, **kwargs):
        """min_output_buffer(Vamsi_QPSK_mod_cf_sptr self, int i) -> long"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_min_output_buffer(self, *args, **kwargs)

    def set_min_output_buffer(self, *args):
        """
        set_min_output_buffer(Vamsi_QPSK_mod_cf_sptr self, long min_output_buffer)
        set_min_output_buffer(Vamsi_QPSK_mod_cf_sptr self, int port, long min_output_buffer)
        """
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_set_min_output_buffer(self, *args)

    def pc_noutput_items(self):
        """pc_noutput_items(Vamsi_QPSK_mod_cf_sptr self) -> float"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_pc_noutput_items(self)

    def pc_noutput_items_avg(self):
        """pc_noutput_items_avg(Vamsi_QPSK_mod_cf_sptr self) -> float"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_pc_noutput_items_avg(self)

    def pc_noutput_items_var(self):
        """pc_noutput_items_var(Vamsi_QPSK_mod_cf_sptr self) -> float"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_pc_noutput_items_var(self)

    def pc_nproduced(self):
        """pc_nproduced(Vamsi_QPSK_mod_cf_sptr self) -> float"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_pc_nproduced(self)

    def pc_nproduced_avg(self):
        """pc_nproduced_avg(Vamsi_QPSK_mod_cf_sptr self) -> float"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_pc_nproduced_avg(self)

    def pc_nproduced_var(self):
        """pc_nproduced_var(Vamsi_QPSK_mod_cf_sptr self) -> float"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_pc_nproduced_var(self)

    def pc_input_buffers_full(self, *args):
        """
        pc_input_buffers_full(Vamsi_QPSK_mod_cf_sptr self, int which) -> float
        pc_input_buffers_full(Vamsi_QPSK_mod_cf_sptr self) -> pmt_vector_float
        """
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_pc_input_buffers_full(self, *args)

    def pc_input_buffers_full_avg(self, *args):
        """
        pc_input_buffers_full_avg(Vamsi_QPSK_mod_cf_sptr self, int which) -> float
        pc_input_buffers_full_avg(Vamsi_QPSK_mod_cf_sptr self) -> pmt_vector_float
        """
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_pc_input_buffers_full_avg(self, *args)

    def pc_input_buffers_full_var(self, *args):
        """
        pc_input_buffers_full_var(Vamsi_QPSK_mod_cf_sptr self, int which) -> float
        pc_input_buffers_full_var(Vamsi_QPSK_mod_cf_sptr self) -> pmt_vector_float
        """
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_pc_input_buffers_full_var(self, *args)

    def pc_output_buffers_full(self, *args):
        """
        pc_output_buffers_full(Vamsi_QPSK_mod_cf_sptr self, int which) -> float
        pc_output_buffers_full(Vamsi_QPSK_mod_cf_sptr self) -> pmt_vector_float
        """
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_pc_output_buffers_full(self, *args)

    def pc_output_buffers_full_avg(self, *args):
        """
        pc_output_buffers_full_avg(Vamsi_QPSK_mod_cf_sptr self, int which) -> float
        pc_output_buffers_full_avg(Vamsi_QPSK_mod_cf_sptr self) -> pmt_vector_float
        """
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_pc_output_buffers_full_avg(self, *args)

    def pc_output_buffers_full_var(self, *args):
        """
        pc_output_buffers_full_var(Vamsi_QPSK_mod_cf_sptr self, int which) -> float
        pc_output_buffers_full_var(Vamsi_QPSK_mod_cf_sptr self) -> pmt_vector_float
        """
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_pc_output_buffers_full_var(self, *args)

    def pc_work_time(self):
        """pc_work_time(Vamsi_QPSK_mod_cf_sptr self) -> float"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_pc_work_time(self)

    def pc_work_time_avg(self):
        """pc_work_time_avg(Vamsi_QPSK_mod_cf_sptr self) -> float"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_pc_work_time_avg(self)

    def pc_work_time_var(self):
        """pc_work_time_var(Vamsi_QPSK_mod_cf_sptr self) -> float"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_pc_work_time_var(self)

    def pc_work_time_total(self):
        """pc_work_time_total(Vamsi_QPSK_mod_cf_sptr self) -> float"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_pc_work_time_total(self)

    def pc_throughput_avg(self):
        """pc_throughput_avg(Vamsi_QPSK_mod_cf_sptr self) -> float"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_pc_throughput_avg(self)

    def set_processor_affinity(self, *args, **kwargs):
        """set_processor_affinity(Vamsi_QPSK_mod_cf_sptr self, std::vector< int,std::allocator< int > > const & mask)"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_set_processor_affinity(self, *args, **kwargs)

    def unset_processor_affinity(self):
        """unset_processor_affinity(Vamsi_QPSK_mod_cf_sptr self)"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_unset_processor_affinity(self)

    def processor_affinity(self):
        """processor_affinity(Vamsi_QPSK_mod_cf_sptr self) -> std::vector< int,std::allocator< int > >"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_processor_affinity(self)

    def active_thread_priority(self):
        """active_thread_priority(Vamsi_QPSK_mod_cf_sptr self) -> int"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_active_thread_priority(self)

    def thread_priority(self):
        """thread_priority(Vamsi_QPSK_mod_cf_sptr self) -> int"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_thread_priority(self)

    def set_thread_priority(self, *args, **kwargs):
        """set_thread_priority(Vamsi_QPSK_mod_cf_sptr self, int priority) -> int"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_set_thread_priority(self, *args, **kwargs)

    def name(self):
        """name(Vamsi_QPSK_mod_cf_sptr self) -> std::string"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_name(self)

    def symbol_name(self):
        """symbol_name(Vamsi_QPSK_mod_cf_sptr self) -> std::string"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_symbol_name(self)

    def input_signature(self):
        """input_signature(Vamsi_QPSK_mod_cf_sptr self) -> io_signature_sptr"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_input_signature(self)

    def output_signature(self):
        """output_signature(Vamsi_QPSK_mod_cf_sptr self) -> io_signature_sptr"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_output_signature(self)

    def unique_id(self):
        """unique_id(Vamsi_QPSK_mod_cf_sptr self) -> long"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_unique_id(self)

    def to_basic_block(self):
        """to_basic_block(Vamsi_QPSK_mod_cf_sptr self) -> basic_block_sptr"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_to_basic_block(self)

    def check_topology(self, *args, **kwargs):
        """check_topology(Vamsi_QPSK_mod_cf_sptr self, int ninputs, int noutputs) -> bool"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_check_topology(self, *args, **kwargs)

    def alias(self):
        """alias(Vamsi_QPSK_mod_cf_sptr self) -> std::string"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_alias(self)

    def set_block_alias(self, *args, **kwargs):
        """set_block_alias(Vamsi_QPSK_mod_cf_sptr self, std::string name)"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_set_block_alias(self, *args, **kwargs)

    def _post(self, *args, **kwargs):
        """_post(Vamsi_QPSK_mod_cf_sptr self, swig_int_ptr which_port, swig_int_ptr msg)"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr__post(self, *args, **kwargs)

    def message_ports_in(self):
        """message_ports_in(Vamsi_QPSK_mod_cf_sptr self) -> swig_int_ptr"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_message_ports_in(self)

    def message_ports_out(self):
        """message_ports_out(Vamsi_QPSK_mod_cf_sptr self) -> swig_int_ptr"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_message_ports_out(self)

    def message_subscribers(self, *args, **kwargs):
        """message_subscribers(Vamsi_QPSK_mod_cf_sptr self, swig_int_ptr which_port) -> swig_int_ptr"""
        return _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_message_subscribers(self, *args, **kwargs)

Vamsi_QPSK_mod_cf_sptr_swigregister = _QPSK_mod_swig.Vamsi_QPSK_mod_cf_sptr_swigregister
Vamsi_QPSK_mod_cf_sptr_swigregister(Vamsi_QPSK_mod_cf_sptr)

Vamsi_QPSK_mod_cf_sptr.__repr__ = lambda self: "<gr_block %s (%d)>" % (self.name(), self.unique_id())
Vamsi_QPSK_mod_cf = Vamsi_QPSK_mod_cf.make;



